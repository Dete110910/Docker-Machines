#!/bin/bash
cd project/
TMP=`ls main.*.js`
if [ ! -e   $TMP.ori2  ];
then
	cp $TMP $TMP.ori2
fi

cp $TMP.ori2 $TMP 


IP=`ifconfig | grep "inet " | grep -v 172.17.0.1 | grep -v 127.0.0.1 | awk '{print $2}'`

sed -i 's/localhost/'$IP'/g' $TMP
