Add-Type -AssemblyName PresentationFramework
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/khanhas/spicetify-cli/master/install.ps1" | Invoke-Expression
spicetify
spicetify backup apply enable-devtool
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/AndreyCCorrea/Spotify-Installer/main/Spicetify%20Installer/DownloadThemes.ps1" | Invoke-Expression
spicetify config extensions dribbblish-dynamic.js
spicetify config current_theme DribbblishDynamic color_scheme dark
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply
pause
