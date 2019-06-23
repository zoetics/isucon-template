bench:
	cat ~/webapp/script/testsets/testsets.json | jq '.[0]' | gradle run -Pargs="net.isucon.isucon5q.bench.scenario.Isucon5Qualification 127.0.0.1"
.PHONY: bench