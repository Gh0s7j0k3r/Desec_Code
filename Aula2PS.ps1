$idade = Read-Host "Qual a idade?"
if ($idade -ge "18") {
    echo "Pode Dirigir"
}else {
    echo "Não Pode Dirigir"
}
foreach ($var1 in 1..10) {echo "192.168.0.$var1"}