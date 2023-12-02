docker rm volumeContainer --force
docker rmi httpd:volume

docker build -t httpd:volume .
docker run -d -p 81:80 --name volumeContainer -v /root/projects/volume/program/:/usr/local/apache2/htdocs  httpd:volume 
