using System.Runtime.InteropServices;
using NAudio.CoreAudioApi.Interfaces;

namespace SpotifyVisualizer.Audio;

/// <summary>
/// Raw COM/P-Invoke plumbing for Windows' per-process WASAPI loopback capture
/// (ActivateAudioInterfaceAsync + AUDIOCLIENT_ACTIVATION_PARAMS), which lets us
/// capture audio rendered by one process tree (Spotify) and nothing else.
/// Requires Windows 10 build 20348+ (practically: any current Windows 10/11).
/// Not exposed by NAudio itself, so this is hand-written against the documented
/// mmdeviceapi.h / audioclientactivationparams.h contracts.
/// </summary>
internal static class ProcessLoopbackInterop
{
    // The special "device" that ActivateAudioInterfaceAsync resolves to a virtual
    // per-process loopback endpoint instead of a real audio device.
    public const string VirtualAudioDeviceProcessLoopback = @"VAD\Process_Loopback";

    public enum AudioClientActivationType
    {
        Default = 0,
        ProcessLoopback = 1,
    }

    public enum ProcessLoopbackMode
    {
        IncludeTargetProcessTree = 0,
        ExcludeTargetProcessTree = 1,
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct AudioClientActivationParams
    {
        public AudioClientActivationType ActivationType;
        public uint TargetProcessId;
        public ProcessLoopbackMode ProcessLoopbackMode;
    }

    // Minimal PROPVARIANT laid out to carry a VT_BLOB pointing at an
    // AudioClientActivationParams instance. Field order/sizes mirror the
    // documented Win32 PROPVARIANT: a 2-byte vt tag padded to an 8-byte
    // boundary, followed by the BLOB { cbSize; pBlobData } union member.
    private const ushort VT_BLOB = 65;

    [StructLayout(LayoutKind.Sequential)]
    private struct PropVariantBlob
    {
        public ushort Vt;
        public ushort Reserved1;
        public ushort Reserved2;
        public ushort Reserved3;
        public uint CbSize;
        public IntPtr PBlobData;
    }

    [ComImport]
    [Guid("72A22D78-CDE4-431D-B8CC-843A71199B6D")]
    [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    public interface IActivateAudioInterfaceAsyncOperation
    {
        void GetActivateResult(
            [MarshalAs(UnmanagedType.Error)] out int activateResult,
            [MarshalAs(UnmanagedType.IUnknown)] out object activatedInterface);
    }

    [ComImport]
    [Guid("41D949AB-9862-444A-80F6-C261334DA5EB")]
    [InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]
    public interface IActivateAudioInterfaceCompletionHandler
    {
        void ActivateCompleted(IActivateAudioInterfaceAsyncOperation activateOperation);
    }

    [DllImport("Mmdevapi.dll", ExactSpelling = true, PreserveSig = false)]
    private static extern void ActivateAudioInterfaceAsync(
        [MarshalAs(UnmanagedType.LPWStr)] string deviceInterfacePath,
        [MarshalAs(UnmanagedType.LPStruct)] Guid riid,
        IntPtr activationParams,
        IActivateAudioInterfaceCompletionHandler completionHandler,
        out IActivateAudioInterfaceAsyncOperation activationOperation);

    private sealed class CompletionHandler : IActivateAudioInterfaceCompletionHandler
    {
        private readonly TaskCompletionSource<IAudioClient> _tcs =
            new(TaskCreationOptions.RunContinuationsAsynchronously);

        public Task<IAudioClient> Result => _tcs.Task;

        public void ActivateCompleted(IActivateAudioInterfaceAsyncOperation activateOperation)
        {
            try
            {
                activateOperation.GetActivateResult(out var hr, out var iface);
                if (hr != 0)
                {
                    _tcs.TrySetException(Marshal.GetExceptionForHR(hr) ?? new COMException("Audio interface activation failed", hr));
                    return;
                }

                _tcs.TrySetResult((IAudioClient)iface);
            }
            catch (Exception ex)
            {
                _tcs.TrySetException(ex);
            }
        }
    }

    /// <summary>
    /// Activates a virtual WASAPI capture endpoint scoped to <paramref name="processId"/>
    /// (and, if <paramref name="includeProcessTree"/>, its child processes), returning the
    /// raw native IAudioClient ready to be wrapped by NAudio's AudioClient.
    /// </summary>
    public static async Task<IAudioClient> ActivateProcessLoopbackAsync(int processId, bool includeProcessTree)
    {
        var activationParams = new AudioClientActivationParams
        {
            ActivationType = AudioClientActivationType.ProcessLoopback,
            TargetProcessId = (uint)processId,
            ProcessLoopbackMode = includeProcessTree
                ? ProcessLoopbackMode.IncludeTargetProcessTree
                : ProcessLoopbackMode.ExcludeTargetProcessTree,
        };

        var paramsSize = Marshal.SizeOf<AudioClientActivationParams>();
        var paramsPtr = Marshal.AllocHGlobal(paramsSize);
        var propVariantPtr = Marshal.AllocHGlobal(Marshal.SizeOf<PropVariantBlob>());
        try
        {
            Marshal.StructureToPtr(activationParams, paramsPtr, false);

            var propVariant = new PropVariantBlob
            {
                Vt = VT_BLOB,
                CbSize = (uint)paramsSize,
                PBlobData = paramsPtr,
            };
            Marshal.StructureToPtr(propVariant, propVariantPtr, false);

            var handler = new CompletionHandler();
            ActivateAudioInterfaceAsync(
                VirtualAudioDeviceProcessLoopback,
                typeof(IAudioClient).GUID,
                propVariantPtr,
                handler,
                out _);

            return await handler.Result.ConfigureAwait(false);
        }
        finally
        {
            Marshal.FreeHGlobal(propVariantPtr);
            Marshal.FreeHGlobal(paramsPtr);
        }
    }
}
