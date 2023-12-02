FROM node:latest as node

WORKDIR /app

RUN git clone https://dete110910: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@github.com/dete110910/front-to-study.git

WORKDIR /app/front-to-study/frontToStudy/

RUN npm install 
RUN npm run build

FROM httpd:latest
RUN mkdir /program
COPY  --from=node /app/front-to-study/frontToStudy/dist/front-to-study /usr/local/apache2/htdocs
WORKDIR /program
COPY dockerIn/ .
RUN chmod +x run.sh
RUN chmod +x runApache.sh
ENTRYPOINT ["/bin/bash", "-c", "./run.sh & ./runApache.sh"]

