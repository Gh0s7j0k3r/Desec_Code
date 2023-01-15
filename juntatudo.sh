#!/bin/bash
#Objetivo: Criar um script para descobrir dosts ativos utilizando o ping. O usuário deve informar a rede e o script deve retornar os hosts que repondem ao ping.

#Script feito antes de iniciar a aula.
#if [ "$1" == "" ]
#then
#    echo "PING SWEEP"
#    echo "Modo de uso: $0 192.168.0."
#else
#    for ip in $(seq 1 255);
#    do
#    ping -c 1 $1$ip | grep ttl;
#    done
#fi
#echo "Script Finalizado"

#Script feito após assistir a aula.
if [ "$1" == "" ]
then
    echo "DESEC SECURITY - PING SWEEP"
    echo "Modo de uso: $0 REDE"
    echo "Exemplo  $0 192.168.0"
else
for host in {1..254};
do
ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4;
done
fi
