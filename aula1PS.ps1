echo "Meu diretorio atual: $(pwd)"
Write-Host "Meu usuario atual: $(whoami)"
$ip = "192.168.0.1"
echo "Varrendo o host: $ip"
$novoip = Read-host "Digite o IP:"
$port = 80
echo "Varrendo o host: $novoip e Porta: $port"
echo "Efetuando ping no host: $novoip"
ping -n 1 $novoip | Select-String "TTL"