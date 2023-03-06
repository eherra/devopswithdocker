FROM ubuntu:20.04

RUN apt-get update && apt-get -y install curl

WORKDIR /usr/src/app

COPY input.sh .

RUN chmod +x input.sh

CMD ./input.sh