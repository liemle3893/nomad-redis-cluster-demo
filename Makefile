.PHONY: redis
JOBS = redis envoy

all: gen-job run-all

gen-job: $(JOBS)

$(JOBS): %:%.nomadtpl
	@levant render -out $@.nomad $@.nomadtpl

.PHONY: run-all
run-all: gen-job
	@nomad run redis.nomad
	# Wait to all job register to Consul
	@sleep 3
	@nomad run envoy.nomad
	@./init-cluster.sh && sh start-redis-cluster.sh


