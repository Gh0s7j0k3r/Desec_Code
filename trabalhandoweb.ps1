'Get-Command | Select-String web
Get-Help Invoke-WebRequest

Invoke-WebRequest www.businesscorp.com.br

#Invoke-WebRequest www.businesscorp.com.br -OutFile pagina.txt

Invoke-WebRequest www.businesscorp.com.br -Method Head
Invoke-WebRequest www.businesscorp.com.br -Method Options

(Invoke-WebRequest www.businesscorp.com.br).statuscode
(Invoke-WebRequest www.businesscorp.com.br).content
(Invoke-WebRequest www.businesscorp.com.br).links
(Invoke-WebRequest www.businesscorp.com.br).links.href
(Invoke-WebRequest www.businesscorp.com.br).headers.server'

$site = Read-Host "Digite o Site: "
$web = Invoke-WebRequest -uri "$site" -Method Options
echo "O servidor roda: "
$web.headers.server
echo ""
echo "O servidor aceita os metodos: "
$web.headers.allow
echo ""
echo "Links encontrados: "
$web2 = Invoke-WebRequest -uri "$site"
$web2.links.href | Select-String http://
