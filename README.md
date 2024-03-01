# compose-mitm-webrowser

/root/.mitmproxy

mv mitmproxy-ca-cert.pem /usr/local/share/ca-certificates/mitmproxy.crt
update-ca-certificates

export CA_CERT=$(cat ./ca.crt)
