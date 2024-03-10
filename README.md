# Compose `MitM` - `Web Browsers`

/root/.mitmproxy

mv mitmproxy-ca-cert.pem /usr/local/share/ca-certificates/mitmproxy.crt
update-ca-certificates

```sh
export PROXY_SERVER=192.168.0.101:6080
docker-compose down -v
docker-compose build
docker-compose up proxyserver -d
export CA_CERT="$(docker exec -t proxyserver cat /root/.mitmproxy/mitmproxy-ca.pem)"
echo "$CA_CERT"
docker-compose up proxyclient -d
```