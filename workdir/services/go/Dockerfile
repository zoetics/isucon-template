FROM golang:1-alpine

RUN apk add --no-cache git

COPY ./app /go/src
ARG GO_WORKDIR
WORKDIR ${GO_WORKDIR}
RUN sh build.sh

CMD ./golang-webapp