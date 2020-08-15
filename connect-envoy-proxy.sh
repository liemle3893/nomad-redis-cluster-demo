#!/bin/bash
ENVOY_PROXIES_LIST=envoy_proxies.txt
consul-template -template "envoy/services.txt.tpl:${ENVOY_PROXIES_LIST}" -once
redis-cli -u redis://$(cat ${ENVOY_PROXIES_LIST} | head -n 1)
