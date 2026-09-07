using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Threading;
using NAudio.CoreAudioApi;
using NAudio.Wave;

namespace SpotifyVisualizer.Audio;

/// <summary>
/// Captures audio rendered by every running process matching a given name (e.g. "Spotify"),
/// using Windows' per-process WASAPI loopback capture so no other application's sound is
/// ever picked up. Spotify's desktop app can run as more than one Spotify.exe process, so
/// this watches for all of them and mixes whichever ones are actually producing sound.
/// </summary>
public sealed class ProcessLoopbackCapture : IDisposable
{
    private const int MaxConcurrentStreams = 4;
    private const int SampleRate = 48000;
    private const int Channels = 2;

    /// <summary>
    /// Raised on a background thread with mono, left, and right float samples in [-1, 1]
    /// plus the sample rate. Left/right are provided (not just mono) so stereo-aware
    /// visualization modes can use the real stereo image instead of a downmix.
    /// </summary>
    public event Action<float[], float[], float[], int>? SamplesAvailable;

    private readonly string _processName;
    private readonly bool _includeChildProcesses;
    private readonly List<StreamWorker> _workers = new();
    private readonly object _lock = new();
    private readonly Timer _watchdog;
    private volatile bool _running;

    public ProcessLoopbackCapture(string processName, bool includeChildProcesses)
    {
        _processName = string.IsNullOrWhiteSpace(processName) ? "Spotify" : processName.Trim();
        _includeChildProcesses = includeChildProcesses;
        _watchdog = new Timer(_ => Rescan(), null, Timeout.Infinite, Timeout.Infinite);
    }

    public bool IsCapturing
    {
        get { lock (_lock) { return _workers.Count > 0; } }
    }

    public void Start()
    {
        if (_running)
        {
            return;
        }

        _running = true;
        Rescan();
        _watchdog.Change(TimeSpan.FromSeconds(2), TimeSpan.FromSeconds(2));
    }

    public void Stop()
    {
        _running = false;
        _watchdog.Change(Timeout.Infinite, Timeout.Infinite);

        lock (_lock)
        {
            foreach (var worker in _workers)
            {
                worker.Dispose();
            }
            _workers.Clear();
        }
    }

    private void Rescan()
    {
        if (!_running)
        {
            return;
        }

        List<int> candidatePids;
        try
        {
            var processes = Process.GetProcessesByName(_processName);
            candidatePids = new List<int>(processes.Length);
            foreach (var p in processes)
            {
                try
                {
                    candidatePids.Add(p.Id);
                }
                finally
                {
                    p.Dispose();
                }
            }
        }
        catch
        {
            return;
        }

        lock (_lock)
        {
            var stale = _workers.Where(w => w.Faulted || !candidatePids.Contains(w.ProcessId)).ToList();
            foreach (var worker in stale)
            {
                worker.Dispose();
                _workers.Remove(worker);
            }

            foreach (var pid in candidatePids)
            {
                if (_workers.Count >= MaxConcurrentStreams)
                {
                    break;
                }
                if (_workers.Any(w => w.ProcessId == pid))
                {
                    continue;
                }

                var worker = new StreamWorker(pid, _includeChildProcesses, RaiseSamples);
                worker.Start();
                _workers.Add(worker);
            }
        }
    }

    private void RaiseSamples(float[] mono, float[] left, float[] right, int sampleRate) =>
        SamplesAvailable?.Invoke(mono, left, right, sampleRate);

    public void Dispose()
    {
        Stop();
        _watchdog.Dispose();
    }

    private sealed class StreamWorker : IDisposable
    {
        public int ProcessId { get; }
        public bool Faulted { get; private set; }

        private readonly bool _includeTree;
        private readonly Action<float[], float[], float[], int> _onSamples;
        private readonly CancellationTokenSource _cts = new();
        private Thread? _thread;
        private AudioClient? _audioClient;

        public StreamWorker(int processId, bool includeTree, Action<float[], float[], float[], int> onSamples)
        {
            ProcessId = processId;
            _includeTree = includeTree;
            _onSamples = onSamples;
        }

        public void Start()
        {
            _thread = new Thread(Run)
            {
                IsBackground = true,
                Name = $"SpotifyVisualizer-Loopback-{ProcessId}",
            };
            _thread.SetApartmentState(ApartmentState.MTA);
            _thread.Start();
        }

        private void Run()
        {
            using var waitHandle = new AutoResetEvent(false);
            var token = _cts.Token;

            try
            {
                var nativeClient = ProcessLoopbackInterop
                    .ActivateProcessLoopbackAsync(ProcessId, _includeTree)
                    .GetAwaiter()
                    .GetResult();

                _audioClient = new AudioClient(nativeClient);

                // The virtual per-process loopback endpoint doesn't implement GetMixFormat
                // (documented WASAPI limitation), so we hand it a known-good shared-mode
                // format instead; the audio engine converts transparently.
                var waveFormat = WaveFormat.CreateIeeeFloatWaveFormat(SampleRate, Channels);

                _audioClient.Initialize(
                    AudioClientShareMode.Shared,
                    AudioClientStreamFlags.Loopback | AudioClientStreamFlags.EventCallback,
                    TimeSpan.FromMilliseconds(50).Ticks,
                    0,
                    waveFormat,
                    Guid.Empty);

                _audioClient.SetEventHandle(waitHandle.SafeWaitHandle.DangerousGetHandle());

                var captureClient = _audioClient.AudioCaptureClient;
                _audioClient.Start();

                while (!token.IsCancellationRequested)
                {
                    if (!waitHandle.WaitOne(200))
                    {
                        continue;
                    }

                    var packetSize = captureClient.GetNextPacketSize();
                    while (packetSize > 0)
                    {
                        var buffer = captureClient.GetBuffer(out var framesAvailable, out var flags);

                        if (framesAvailable > 0)
                        {
                            var mono = new float[framesAvailable];
                            var left = new float[framesAvailable];
                            var right = new float[framesAvailable];
                            if ((flags & AudioClientBufferFlags.Silent) == 0 && buffer != IntPtr.Zero)
                            {
                                var interleaved = new float[framesAvailable * Channels];
                                Marshal.Copy(buffer, interleaved, 0, interleaved.Length);
                                for (var i = 0; i < framesAvailable; i++)
                                {
                                    var l = interleaved[i * Channels];
                                    var r = interleaved[i * Channels + 1];
                                    left[i] = l;
                                    right[i] = r;
                                    mono[i] = (l + r) * 0.5f;
                                }
                            }

                            _onSamples(mono, left, right, SampleRate);
                        }

                        captureClient.ReleaseBuffer(framesAvailable);
                        packetSize = captureClient.GetNextPacketSize();
                    }
                }

                _audioClient.Stop();
            }
            catch
            {
                Faulted = true;
            }
            finally
            {
                _audioClient?.Dispose();
            }
        }

        public void Dispose()
        {
            _cts.Cancel();
            _thread?.Join(500);
            _cts.Dispose();
        }
    }
}
