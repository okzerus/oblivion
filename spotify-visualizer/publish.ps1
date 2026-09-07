#requires -version 5
<#
    Builds a single, self-contained SpotifyVisualizer.exe that doesn't need the .NET
    runtime installed on the target machine. Output lands in .\publish\.

    Usage:
        .\publish.ps1
        .\publish.ps1 -SelfContained:$false   # smaller output, needs .NET 8 Desktop Runtime installed
#>
param(
    [bool]$SelfContained = $true,
    [string]$OutputDir = "publish"
)

$ErrorActionPreference = "Stop"
Push-Location $PSScriptRoot
try {
    dotnet publish "src/SpotifyVisualizer" `
        -c Release `
        -r win-x64 `
        --self-contained $SelfContained `
        -p:PublishSingleFile=true `
        -p:PublishReadyToRun=$SelfContained `
        -p:IncludeNativeLibrariesForSelfExtract=true `
        -o $OutputDir

    if ($LASTEXITCODE -ne 0) {
        throw "dotnet publish failed with exit code $LASTEXITCODE"
    }

    Write-Host ""
    Write-Host "Done: $OutputDir\SpotifyVisualizer.exe" -ForegroundColor Green
}
finally {
    Pop-Location
}
