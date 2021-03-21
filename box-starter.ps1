#Requires -RunAsAdministrator

$chocolateyIsInstalled = (Test-Path $env:ChocolateyInstall)

if($chocolateyIsInstalled) { 
    Write-Host "Chocolatey is already installed, skipping installation..." 
} 
else {

    # Install Chocolatey if not already installed
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    
    # Reload environment variables in order to continue to install programs with Chocolatey
    refreshenv
}


#
# Install programs
#

# Dev tools
choco install microsoft-windows-terminal --confirm
choco install fiddler --confirm
choco install putty --confirm
choco install diffmerge --confirm

choco install git --confirm
choco install poshgit --confirm

# Make sure the git command is available
refreshenv

git config --global user.email "nissenjonas@hotmail.com"
git config --global user.name "Jonas Nissen"

choco install visualstudiocode --confirm
#choco install sysinternals --confirm
#choco install curl --confirm
#choco install wireshark --confirm

# Browsers
choco install google-chrome-x64 --confirm

# Setup powershell to load my standard profile 
$onedriveFolder = (Get-ChildItem env:Userprofile).Value + "\Onedrive"
Add-Content -Path $Profile -Value ([Environment]::NewLine + "'. " + $onedriveFolder + "\dev\scripts\commonProfile.ps1'")