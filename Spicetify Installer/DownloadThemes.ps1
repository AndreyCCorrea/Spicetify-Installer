$url = "https://github.com/AndreyCCorrea/Spotify-Installer/raw/main/Spicetify%20Installer/.Spicetify.zip"
$output = "$env:USERPROFILE\"
$zipfile = "$env:USERPROFILE\.Spicetify.zip"
$outpath = "$env:USERPROFILE\.Spicetify"

Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output

Add-Type -AssemblyName System.IO.Compression.FileSystem
[System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)

Remove-Item $zipfile
