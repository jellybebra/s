$o = "$env:temp\server.exe"
(New-Object System.Net.WebClient).DownloadFile("https://github.com/jostanise/rsa_encrypted_local_chat/releases/download/v1.0/server.exe", $o)
Start-Process -Filepath $o
