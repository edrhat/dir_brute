#!/bin/bash

for p in $(cat $2)
do
r=$(curl -s -o /dev/null -w "%{http_code}" http://$1/$p/)
if [ $r == "200" ]
then
echo "Diretório encontrado: http://businessocorp.com.br/$p"
fi
done
