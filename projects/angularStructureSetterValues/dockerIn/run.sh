VARHOSTNAME=`hostname`

while(true)
do
	cp indexori.html /usr/local/apache2/htdocs/index.html
	DATE=`date`
	sed -i 's/name/'$VARHOSTNAME'/g' /usr/local/apache2/htdocs/index.html
	sed -i 's/date/'"$DATE"'/g' /usr/local/apache2/htdocs/index.html

sleep 5 
done
