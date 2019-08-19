mkdir .paket
Set-Location .paket

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest "https://github.com/fsprojects/Paket/releases/download/5.216.0/paket.bootstrapper.exe" -OutFile "paket.bootstrapper.exe"
Rename-Item "paket.bootstrapper.exe" -NewName "paket.exe"
Set-Location ..
.paket/paket.exe init