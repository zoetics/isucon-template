default: help
help: ## ヘルプを表示します
	@grep -E '^[.a-zA-Z_-]+:.*?## .*$$' Makefile \
	| awk 'BEGIN{FS=":.*?## "}{split($$2,p,/eg\./); if(length(p)>1){printf "\033[36m%-20s\033[0m %s\033[90meg.%s\033[0m\n",$$1,p[1],p[2]} else {printf "\033[36m%-20s\033[0m %s\n",$$1,$$2}}'
.PHONY: help

all: restart bench analyze ## すべてのタスクを実行します eg. make all
.PHONY: all

restart: ## サービスを再起動します eg. make restart
	sudo ./restart.sh
.PHONY: restart

bench: ## ベンチマークを実行します eg. make bench
	./bench.sh
.PHONY: bench

analyze: ## 分析を実行します eg. make analyze
	./analyze.sh
.PHONY: analyze
