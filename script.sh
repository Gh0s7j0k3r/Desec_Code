#!/bin/bash
#Primeiro scrip
echo "DESEC SECURITY" #echo exibe o texto na tela
echo "Digite o serviço a ser iniciado:"
read var1
service $var1 restart
echo "Serviçoes ativos:"
ps aux | grep $var1
echo "Portas abertas"
netstat -nlpt