#!/bin/bash
echo "Qual a cor do semafaro?"
read cor
if [ "$cor" == "verde" ] 
then
    echo "Siga em frente =)"
elif [ "$cor" == "amarelo" ]
then
    echo "Aguarde!"
else
    echo "PARE!"
fi

echo "O cliente autorizou o Pentest?"
echo "1 - Sim"
echo "2 - Nao"
read resp
case $resp in
"1")
    echo "PODE INICIAR O PENTEST"
;;
"2")
    echo "PENTEST PENDENTE! AGUARDE O CLIENTE AUTORIZAR"
;;
esac