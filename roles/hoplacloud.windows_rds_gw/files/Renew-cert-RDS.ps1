param($result)

$pfxpath = $result.ManagedItem.CertificatePath
Import-Module RemoteDesktop
$broker = (Get-RDServer -Role RDS-CONNECTION-BROKER).Server

Set-RDCertificate -Role RDPublishing -ImportPath $pfxpath -Force -ConnectionBroker $broker
Set-RDCertificate -Role RDWebAcces -ImportPath $pfxpath -Force -ConnectionBroker $broker
Set-RDCertificate -Role RDGateway -ImportPath $pfxpath -Force -ConnectionBroker $broker
Set-RDCertificate -Role RDRedirector -ImportPath $pfxpath -Force -ConnectionBroker $broker
Import-RDWebClientBrokerCert -Path $pfxpath

Restart-Service TSGateway -Force -ErrorAction Stop
Restart-Service TScPubRPC -Force -ErrorAction Stop
Restart-Service Tssdis -Force -ErrorAction Stop
Restart-Service w3svc -Force -ErrorAction Stop
Restart-Service RasMan -Force -ErrorAction Stop
Restart-Service RasAuto -Force -ErrorAction Stop
Restart-Service RDMS -Force -ErrorAction Stop
Restart-Service Termservice -Force -ErrorAction Stop
