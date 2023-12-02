HOSTNAME=`hostname`
cd /usr/local/apache2/htdocs/
MAIN=`ls main.*.js`
cp $MAIN /tmp/$MAIN.ori

while(true)
do

	DATE=`date +'%d-%m-%Y %I:%M:%S'`
	MINAME='202010596 Daniel Antonio Sánchez Salas'
#	DATE=`(TZ="America/Bogota" date +'%d/%m/%Y %I:%M:%S')`
#	DATE=\`TZ="America/Bogota" date \+'\%d\/\%m\/\%Y \%I:\%M:\%S'\`
#	sed 's/varhostnamefront/'$HOSTNAME'/g' /tmp/$MAIN.ori > /tmp/$MAIN 
#	sed -i 's/vardatefront/'"$DATE"'/g' /tmp/$MAIN
#	cp /tmp/$MAIN /urs/local/apache2/htdocs/$MAIN

	cp /tmp/$MAIN.ori /tmp/$MAIN
	sed -i 's/miNombre/'"$MINAME"'/g' /tmp/$MAIN
	sed -i 's/varhostnamefront/'$HOSTNAME'/g' /tmp/$MAIN
	sed -i 's/vardatefront/'"$DATE"'/g' /tmp/$MAIN
	cp /tmp/$MAIN $MAIN

	sleep 5
done
