FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | sh
    
WORKDIR /usr/src/app

COPY cloneAndPush.sh .

RUN chmod +x cloneAndPush.sh

ENTRYPOINT ["./cloneAndPush.sh"]