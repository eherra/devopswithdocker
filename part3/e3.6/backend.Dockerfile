FROM golang:1.16-alpine

WORKDIR /usr/src/app
COPY . /usr/src/app 

RUN cd /usr/src/app && go build && \
    adduser --system --no-create-home nonroot

USER nonroot

CMD ["./server"]