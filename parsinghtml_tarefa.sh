#!/bin/bash
#Objetivo: Criar um script para identificar possiveis hosts em um dominio.
#O usuario deve informar o dominio e caso o site possua subdominios na pagina ele deve retornar o IP dos hosts.

#Script realizado junto a aula:
if [ "$1" == "" ]
then
    echo "DESEC SECURITY - PARSING"
    echo "Exemplo de uso: $0 exemplo.com.br"
else
    wget $1
    grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > $1.txt
    for url in $(cat $1.txt);
    do
    host $url | grep "has address";
    done
