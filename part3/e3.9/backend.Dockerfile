# Build
FROM golang:1.16-alpine AS build
WORKDIR /usr/src/app
ADD . /usr/src/app

RUN cd /usr/src/app && go build -o goapp

# Deploy
FROM scratch
RUN adduser --system --no-create-home nonroot

RUN apk update && \
    apk add ca-certificates && \
    rm -rf /var/cache/apk/*

WORKDIR /usr/src/app
COPY --from=build /usr/src/app/goapp /usr/src/app
 
USER nonroot

CMD ["./goapp"]