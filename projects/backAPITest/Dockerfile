FROM ubuntuback:java19

RUN mkdir program/
WORKDIR program/
COPY project/ .
COPY dockerIn/ .
RUN chmod +x run.sh
ENTRYPOINT ["/bin/bash", "-c", "./run.sh"]
