FROM alpine:latest

ENV GOPATH /usr/local

RUN apk --no-cache add go git musl-dev && rm -rf /var/cache/apk/*
RUN go get -u -v github.com/codegangsta/gin
RUN go get -u -v github.com/pion/signaler
COPY localhost* /root/

WORKDIR /usr/local/src/github.com/pion/demo-conference/signaler
CMD gin -p 443\
        --certFile=/root/localhost.pem\
	--keyFile=/root/localhost.key
