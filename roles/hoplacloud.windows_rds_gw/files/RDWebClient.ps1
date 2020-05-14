Install-Module -Name PowerShellGet -Force
powershell.exe
Install-Module RDWebClientManagement -Force -AcceptLicense
Install-RDWebClientPackage
$cert = Read-Host -Prompt 'Input the Certificat path (C:\)'
Import-RDWebClientBrokerCert $cert
Publish-RDWebClientPackage -Type Production -Latest
