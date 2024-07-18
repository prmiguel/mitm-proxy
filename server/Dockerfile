FROM mitmproxy/mitmproxy

COPY ./addons /addons
RUN chown -R mitmproxy:mitmproxy /addons
RUN mkdir -p /home/mitmproxy/.mitmproxy
RUN chown -R mitmproxy:mitmproxy /home/mitmproxy/.mitmproxy

USER 1000