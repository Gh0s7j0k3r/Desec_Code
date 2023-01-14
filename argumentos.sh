#!/bin/bash
if [ "$1" == "" ]
then
    echo "DESECS SECURITY"
    echo "Mode de uso: $0 192.168.0.1 80"
else
    echo "Explorando o host: $1 na porta: $2"
fi
