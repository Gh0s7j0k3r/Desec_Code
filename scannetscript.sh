#!/bin/bash

for port in $(cat malware.txt);
do
hping3 -S -p $port -c 1 37.59.174.235
done

