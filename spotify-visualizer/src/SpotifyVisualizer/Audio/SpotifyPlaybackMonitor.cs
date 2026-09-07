using System.Threading;
using Windows.Media.Control;

namespace SpotifyVisualizer.Audio;

/// <summary>
/// Reads Spotify's actual play/pause state from Windows' System Media Transport Controls -
/// the same OS mechanism behind the "Now Playing" widget in the volume flyout and hardware
/// media keys. This works on every supported Windows version (unlike per-process WASAPI
/// loopback scoping, which Windows 10 doesn't reliably honor - see ProcessLoopbackCapture),
/// so it's used as a second, independent gate: even when audio capture can't be scoped to
/// Spotify alone, the overlay can still go quiet the instant Spotify itself is paused,
/// regardless of what else on the PC is making noise.
///
/// If Spotify never shows up as a media session at all (SMTC integration unavailable for
/// some reason), <see cref="IsPlaying"/> stays permanently true rather than permanently
/// silencing the overlay - this is an extra safety net, not a replacement for real audio
/// activity detection.
/// </summary>
public sealed class SpotifyPlaybackMonitor : IDisposable
{
    private readonly string _matchToken;
    private readonly System.Threading.Timer _pollTimer;
    private GlobalSystemMediaTransportControlsSessionManager? _manager;
    private volatile bool _isPlaying;
    private volatile bool _everFoundSession;

    public SpotifyPlaybackMonitor(string processName)
    {
        _matchToken = (string.IsNullOrWhiteSpace(processName) ? "Spotify" : processName.Trim()).ToLowerInvariant();
        _pollTimer = new System.Threading.Timer(_ => Poll(), null, Timeout.Infinite, Timeout.Infinite);
    }

    /// <summary>
    /// True unless we've confirmed we can see Spotify's media session and it's currently
    /// paused/stopped - see the class remarks for why "never found a session" defaults open.
    /// </summary>
    public bool IsPlaying => !_everFoundSession || _isPlaying;

    public void Start() => _pollTimer.Change(TimeSpan.Zero, TimeSpan.FromSeconds(1));

    public void Stop() => _pollTimer.Change(Timeout.Infinite, Timeout.Infinite);

    private async void Poll()
    {
        try
        {
            _manager ??= await GlobalSystemMediaTransportControlsSessionManager.RequestAsync();

            GlobalSystemMediaTransportControlsSession? found = null;
            foreach (var session in _manager.GetSessions())
            {
                var id = session.SourceAppUserModelId;
                if (!string.IsNullOrEmpty(id) && id.ToLowerInvariant().Contains(_matchToken))
                {
                    found = session;
                    break;
                }
            }

            if (found == null)
            {
                // Don't touch _everFoundSession here - Spotify may just not be running right
                // now, which is different from "SMTC integration never worked at all."
                _isPlaying = false;
                return;
            }

            _everFoundSession = true;
            var info = found.GetPlaybackInfo();
            _isPlaying = info?.PlaybackStatus == GlobalSystemMediaTransportControlsSessionPlaybackStatus.Playing;
        }
        catch
        {
            // SMTC can throw transiently (no sessions yet, an RPC hiccup); just try again
            // next tick rather than tearing anything down.
        }
    }

    public void Dispose()
    {
        _pollTimer.Dispose();
    }
}
