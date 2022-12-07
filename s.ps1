$exe = $env:temp + "\myexe.exe"

if (Test-Path $exe) {
  Remove-Item $exe
  write-host "$exe has been deleted"
}
else {
  Write-host "$exe doesn't exist"
}

$client = New-Object System.Net.WebClient
$client.DownloadFile("https://github.com/jostanise/rsa_encrypted_local_chat/releases/download/v1.0/server.exe", $exe)
Start-Process -Filepath $exe
