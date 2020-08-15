#!/bin/bash
consul-template -template "redis/start-redis-cluster.sh.tpl:start-redis-cluster.sh" -once