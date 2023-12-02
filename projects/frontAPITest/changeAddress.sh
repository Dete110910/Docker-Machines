#!/bin/bash

cd project/

TMP=`ls main.*.js`


if [ ! -e $TMP.tmp ];
then
	cp $TMP $TMP.tmp
	echo "cree un nuevo archivo"
fi

cp $TMP.tmp $TMP

IP=`ifconfig | grep "inet "| grep -v 172.17.0.1 | grep -v 127.0.0.1 | awk '{print $2}'`
PORT=85
ADDRESS=$IP":"$PORT

SECONDPORT=84
ADDRESS2=$IP":"$SECONDPORT
echo $ADDRESS
sed -i 's/localhost:8080/'"$ADDRESS"'/g' $TMP
sed -i 's/address2:port2/'$ADDRESS2'/g' $TMP
