# Pull in the layer of the base image: alpine:3.10.3
FROM golang:1.16-alpine

LABEL maintainer='s2210455004@fhooe.at'

WORKDIR /src

COPY *.go go.* ./

RUN apk update && \
    apk add git && \
    apk add build-base && \
    apk add --no-cache curl && \
    go get -v -u github.com/stretchr/testify && \
    CGO_ENABLED=0 go build -o /usr/myappmain

EXPOSE 8010

CMD ["/usr/myappmain"]
