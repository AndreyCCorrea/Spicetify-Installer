######################################################################
#                                                                    #
# Download and Unzip GitHub Repository                               #
# Author: Sandro Pereira                                             #
#                                                                    #
######################################################################

function DownloadGitHubRepository 
{ 
    $name = "Themes-Extensions"
    $location = "$env:USERPROFILE"
    
    # Force to create a zip file 
    $ZipFile = "$location\$Name.zip" 
    New-Item $ZipFile -ItemType File -Force

    $RepositoryZipUrl = "https://github.com/AndreyCCorrea/PowerShell-Scripts/blob/main/Spicetify%20Installer/Theme-Extensions.zip"
    #$RepositoryZipUrl = "https://api.github.com/repos/$Author/$Name/zipball/$Branch"  
    # download the zip 
    Write-Host 'Starting downloading the GitHub Repository'
    Invoke-RestMethod -Uri $RepositoryZipUrl -OutFile $ZipFile
    Write-Host 'Download finished'

    #Extract Zip File
    Write-Host 'Starting unziping the GitHub Repository locally'
    Expand-Archive -Path $ZipFile -DestinationPath $location -Force
    Write-Host 'Unzip finished'
    
    # remove zip file
    Remove-Item -Path $ZipFile -Force 
}
DownloadGithubRepository
