#!/bin/bash
#Objetivo: Criar um script para descobrir quais hosts na rede possuem uma determinada porta aberta.
#O usuario deve informar a rede e o script deve retornar os hosts que possuem a porta 80 aberta.

#Script realizado junto a aula:
if [ "$1" == "" ]
then
    echo "DESEC SECURITY - PORTSCAN NETWORK"
    echo "Modo de uso: $0 REDE PORTA"
    echo "Exemplo: $0 172.16.1 80"
    echo "Usar scrip com privilegio root!"
else
for ip in {1..254};
do
hping3 -S -p $2 -c 1 $1.$ip 2> /dev/null | grep "flags=SA" | cut -d " " -f 2 | cut -d "=" -f 2;
done
fi
