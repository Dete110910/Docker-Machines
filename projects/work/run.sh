VERSION=$1
KEY=$2
USERNAME=dete110910

if [ $# -eq 2 ]; then
	
	BORRAR=`docker images docker.pkg.github.com/dete110910/frontcompiler/front-to-study -q`
	docker rmi $BORRAR -f


	docker build -t docker.pkg.github.com/dete110910/frontcompiler/front-to-study:$VERSION .
	docker build -t docker.pkg.github.com/dete110910/frontcompiler/front-to-study:latest .
	echo $KEY | docker login docker.pkg.github.com -u dete110910 --password-stdin
 	docker push docker.pkg.github.com/dete110910/frontcompiler/front-to-study:$VERSION
 	docker push docker.pkg.github.com/dete110910/frontcompiler/front-to-study:latest

	BORRAR=`docker images docker.pkg.github.com/dete110910/frontcompiler/front-to-study -q`
	docker rmi $BORRAR -f
else
	echo "Error de uso de parámetros"
	echo "Usar:"
	echo "	" $0  "version <token>"
	echo "	" $0 v1 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

fi
