FROM ubuntu:20.04

RUN apt-get update && \
    apt-get -qy full-upgrade && \
    apt-get install -qy curl && \
    apt-get install -qy curl && \
    curl -sSL https://get.docker.com/ | bash
    
WORKDIR /usr/src/app

COPY builder.sh .

RUN chmod +x builder.sh

ENTRYPOINT ["./builder.sh"]