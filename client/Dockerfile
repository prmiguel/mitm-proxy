FROM kasmweb/desktop:1.15.0
LABEL maintainer="prmiguel <miangel-pr@outlook.com>"
USER root
RUN apt update && apt install -y jq kate
ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME
COPY ./scripts/set_proxy_conf.sh $STARTUPDIR/set_proxy_conf.sh
COPY ./scripts/kasm_default_profile.sh $STARTUPDIR/kasm_default_profile.sh
COPY ./scripts/install_ca_cert.sh $STARTUPDIR/install_ca_cert.sh
COPY ./scripts/check_proxy_server.sh $STARTUPDIR/check_proxy_server.sh
RUN mkdir -p $INST_SCRIPTS/certificates && \
    chmod 777 $INST_SCRIPTS/certificates && \
    touch $INST_SCRIPTS/certificates/ca.crt && \
    chmod 777 $INST_SCRIPTS/certificates/ca.crt && \
    chmod 777 /usr/lib/firefox/distribution && \
    chmod 777 /etc/opt/chrome/policies/managed && \
    chmod 777 /usr/local/share/ca-certificates && \
    chmod 777 /etc/ssl/certs && \
    mv /usr/share/backgrounds/brad-huchteman-stone-mountain.jpg /usr/share/backgrounds/bg_default.png

USER 1000
