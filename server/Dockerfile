FROM mitmproxy/mitmproxy

LABEL maintainer="prmiguel <miangel-pr@outlook.com>"

USER root
COPY ./addons /addons
RUN apt update && apt install -y curl && \
    chown -R mitmproxy:mitmproxy /addons && \
    chmod -R 777 /addons/ && \
    mkdir -p /home/mitmproxy/.mitmproxy && \
    chown -R mitmproxy:mitmproxy /home/mitmproxy/.mitmproxy

USER 1000

HEALTHCHECK CMD curl --fail http://localhost:8081 || exit 1
