#Get-Command - Verifica todos os comando disponiveis no powershell
Get-Command | Select-String Test
Get-Help Test-Connection #Get-Help - Mostra como funciona o comando

Test-NetConnection www.businesscorp.com.br
Test-NetConnection www.businesscorp.com.br -Port 80 -WarningAction SilentlyContinue -InformationLevel Quiet

param($ip)
if (!$ip){
    echo "DESEC SECURITY - PORTSCAN"
    echo ".\portscan.ps1 192.168.0.1 80"
} else {
    $topports = 21,22,25,80,443,3306,445
    try {foreach ($porta in $topports){
If (Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet) {
    echo "Porta $porta aberta"
}} else {
    echo "Porta $porta fechada"
} 
} catch {}
}