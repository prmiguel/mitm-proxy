FROM lscr.io/linuxserver/code-server:latest
LABEL maintainer="prmiguel <miangel-pr@outlook.com>"
USER root
RUN apt update && apt install -y python3 python3-pip
RUN /app/code-server/bin/code-server --install-extension  ericsia.pythonsnippets3
# USER 1000
# RUN pip install mitmproxy