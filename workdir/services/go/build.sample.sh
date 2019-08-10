#!/bin/bash

# このファイル自体はビルドファイル（ex.app.goから作成したapp）と同階層に置く想定

# app.goなどでimportしてくるパッケージはここで取得する（以下は isucon5予選の例）
go get -u github.com/go-sql-driver/mysql
go get -u github.com/gorilla/context
go get -u github.com/gorilla/mux
go get -u github.com/gorilla/sessions
go get runtime/pprof
go get net/http/pprof

go build -o app
