FROM golang:1.16-alpine

WORKDIR /usr/src/app
COPY . . 

RUN go build

ENV PORT=8080

EXPOSE 8080

CMD ["./server"]