FROM golang:1-alpine

RUN apk add --no-cache git

ARG GO_WORKDIR
WORKDIR ${GO_WORKDIR}

COPY ./app /go/src
RUN sh build.sh

# FIXME: ビルドファイルで起動できるようにする
CMD ["go", "run", "app.go"]