param($p1)
if (!$p1) {
    echo "Desec Security"
    echo "Exemplo de uso: .\portscan.ps1 192.168.0"
    <# Action to perform if the condition is true #>
}else {
    foreach ($ip in 1..254){
    try {$resp = ping -n 1 "$p1.$ip" | Select-String "TTL"
    $resp.Line.Split(' ')[2] -replace ":", ""
    } catch {} #ignora os erros
}
}
