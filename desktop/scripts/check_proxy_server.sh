#!/usr/bin/env bash

wait_proxy_server_sec="30"
if [ -n "${WAIT_PROXY_SERVER}" ]; then
    wait_proxy_server_sec="${WAIT_PROXY_SERVER}"
fi
echo "Wait for PROXY_SERVER [$wait_proxy_server_sec]"
sleep "$wait_proxy_server_sec"
