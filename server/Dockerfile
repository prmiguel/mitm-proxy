FROM mitmproxy/mitmproxy

LABEL maintainer="prmiguel <miangel-pr@outlook.com>"

COPY ./addons /addons
RUN chown -R mitmproxy:mitmproxy /addons && \
    mkdir -p /home/mitmproxy/.mitmproxy && \
    chown -R mitmproxy:mitmproxy /home/mitmproxy/.mitmproxy

USER 1000
