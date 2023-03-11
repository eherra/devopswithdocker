FROM golang:1.16-alpine

# added here
RUN adduser --system --no-create-home nonroot

WORKDIR /usr/src/app
COPY . . 

RUN go build

# use nonroot user
USER nonroot

CMD ["./server"]