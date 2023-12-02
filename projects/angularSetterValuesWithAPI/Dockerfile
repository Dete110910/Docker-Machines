FROM httpd:latest

RUN mkdir /program
WORKDIR /usr/local/apache2/htdocs
COPY project/ .
WORKDIR /program
COPY dockerIn/ .
RUN chmod +x run.sh
RUN chmod +x runApache.sh
ENTRYPOINT ["/bin/bash", "-c", "./run.sh & ./runApache.sh"]
