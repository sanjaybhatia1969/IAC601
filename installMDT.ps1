#Define the path of the installer
$MDTInstallerPath = "path of mdt file here "

# Install MDT
Start-Process -FilePath msiexec.exe -ArgumentList "/i `"$installerPath`" /quiet /norestart" -Wait



