set-netfirewallprofile domain,public,private –Enabled false
docker pull valda/netgeoip

$text = "
set-netfirewallprofile domain,public,private –Enabled false
docker pull valda/netgeoip
`$dock = docker run -d -p 5000:5000 valda/netgeoip
`$ip = docker inspect -f `"{{ .NetworkSettings.Networks.nat.IPAddress }}`" `$dock
`$lip = (Get-NetIPConfiguration | where {`$_.IPv4DefaultGateway -ne `$null }).IPv4Address.IPAddress
netsh interface portproxy add v4tov4 listenport=5000 listenaddress=`$lip connectport=5000 connectaddress=`$ip
"
$text > c:\run.ps1

schtasks /Create /RU "SYSTEM" /SC ONSTART /TR "powershell.exe -ExecutionPolicy Unrestricted -File c:\run.ps1" /TN "RunDocker"

Restart-Computer

