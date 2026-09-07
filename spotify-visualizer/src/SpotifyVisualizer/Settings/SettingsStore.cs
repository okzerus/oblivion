using System.IO;
using System.Text.Json;
using SpotifyVisualizer.Models;

namespace SpotifyVisualizer.Settings;

public static class SettingsStore
{
    private static readonly string Directory = Path.Combine(
        Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
        "SpotifyVisualizer");

    private static readonly string FilePath = Path.Combine(Directory, "settings.json");

    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        WriteIndented = true,
        IncludeFields = false,
    };

    public static VisualizerSettings Load()
    {
        try
        {
            if (!File.Exists(FilePath))
            {
                return new VisualizerSettings();
            }

            var json = File.ReadAllText(FilePath);
            var settings = JsonSerializer.Deserialize<VisualizerSettings>(json, JsonOptions);
            return settings ?? new VisualizerSettings();
        }
        catch
        {
            // Corrupt or unreadable settings file: fall back to defaults rather than crash on startup.
            return new VisualizerSettings();
        }
    }

    public static void Save(VisualizerSettings settings)
    {
        System.IO.Directory.CreateDirectory(Directory);
        var json = JsonSerializer.Serialize(settings, JsonOptions);
        var tempPath = FilePath + ".tmp";
        File.WriteAllText(tempPath, json);
        File.Copy(tempPath, FilePath, overwrite: true);
        File.Delete(tempPath);
    }
}
