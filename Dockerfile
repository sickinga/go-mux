# Pull in the layer of the base image: alpine:3.10.3
FROM golang:1.16-alpine

LABEL maintainer='s2210455004@fhooe.at'

WORKDIR /src

COPY *.go go.* ./


EXPOSE 8010

CMD ["/usr/myappmain"]
