#!/bin/bash
VARHOSTNAME=`hostname`
cd /usr/local/apache2/htdocs/
MAIN=`ls main.*.js`
cp /usr/local/apache2/htdocs/$MAIN /tmp/$MAIN.ori

while(true)
do
	VARDATE=`date`
	sed 's/varhostnamefront/'$VARHOSTNAME'/g' /tmp/$MAIN.ori > /tmp/$MAIN
	sed -i 's/varhostdatefront/'"$VARDATE"'/g' /tmp/$MAIN
	cp /tmp/$MAIN /usr/local/apache2/htdocs/$MAIN

	sleep 5
done
