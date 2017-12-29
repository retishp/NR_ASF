Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip ".\NewRelic.Agent.Installer.zip" "C:\NRAgent"
Set-Location "C:\NRAgent"
& "c:\NRAgent\install.cmd" -LicenseKey 5b770a55f69576aeebc63fb31ee3fb73d174ab44 -InstrumentAll