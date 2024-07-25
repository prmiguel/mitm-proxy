FROM lscr.io/linuxserver/openvscode-server:latest
LABEL maintainer="prmiguel <miangel-pr@outlook.com>"
RUN apt update && apt install -y python3 python3-pip && \
    ./app/openvscode-server/bin/openvscode-server --install-extension ms-python.python && \
    ./app/openvscode-server/bin/openvscode-server --install-extension esbenp.prettier-vscode
RUN /usr/bin/pip install mitmproxy
