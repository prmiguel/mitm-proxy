#!/usr/bin/env bash

echo "{\"policies\":{\"Proxy\":{\"Mode\":\"manual\",\"Locked\":true,\"HTTPProxy\":\"$PROXY_SERVER\",\"UseHTTPProxyForAllProtocols\":true,\"Passthrough\":\"\"}}}" | jq . > /usr/lib/firefox/distribution/policies.json
echo "{\"ProxySettings\":{\"ProxyBypassList\":\"\",\"ProxyMode\":\"fixed_servers\",\"ProxyServer\":\"$PROXY_SERVER\"}}" | jq . > /etc/opt/chrome/policies/managed/proxy.json
