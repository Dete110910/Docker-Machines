FROM httpd:latest
#RUN apt -y update 
#RUN apt -y upgrade
#RUN apt -y update date

RUN mkdir /program
WORKDIR /usr/local/apache2/htdocs
COPY project/ .
WORKDIR /program
COPY dockerIn/ .
RUN chmod +x run.sh
RUN chmod +x runApache.sh
ENTRYPOINT ["/bin/bash", "-c", "./run.sh & ./runApache.sh"]
