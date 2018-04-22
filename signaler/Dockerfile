FROM alpine:latest

ENV GOPATH /usr/local

RUN apk --no-cache add go git musl-dev && rm -rf /var/cache/apk/*
RUN go get github.com/codegangsta/gin github.com/pions/signaler
COPY localhost* /root/

WORKDIR /usr/local/src/github.com/pions/demo-conference/signaler
CMD gin -p 443\
        --certFile=/root/localhost.pem\
	--keyFile=/root/localhost.key
