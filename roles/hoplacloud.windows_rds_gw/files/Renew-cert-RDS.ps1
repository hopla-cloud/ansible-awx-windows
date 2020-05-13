param($result)
set-alias ps64 "$env:C:\Windows\System32\WindowsPowerShell\v1.0\Powershell.exe"

ps64 -args $result -command {
   $result = $args[0]
   $pfxpath = $result.ManagedItem.CertificatePath

   Import-Module RemoteDesktop
   Set-RDCertificate -Role RDPublishing -ImportPath $pfxpath -Force
   Set-RDCertificate -Role RDWebAcces -ImportPath $pfxpath -Force
   Set-RDCertificate -Role RDGateway -ImportPath $pfxpath -Force
   Set-RDCertificate -Role RDRedirector -ImportPath $pfxpath -Force
}