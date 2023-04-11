# Pull in the layer of the base image: alpine:3.10.3
FROM golang:1.11-alpine

LABEL maintainer='s2210455004@fhooe.at'

WORKDIR /src

COPY *.go go.* ./

RUN apk update && apk add git

RUN CGO_ENABLED=0 go build -o /usr/myappmain

EXPOSE 8010

CMD ["/usr/myappmain"]
