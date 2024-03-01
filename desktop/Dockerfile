FROM kasmweb/desktop:1.15.0
USER root
ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME
RUN apt update && apt install -y jq
COPY ./scripts/set_proxy_conf.sh $STARTUPDIR/set_proxy_conf.sh
COPY ./scripts/kasm_default_profile.sh $STARTUPDIR/kasm_default_profile.sh
COPY ./scripts/install_ca_cert.sh $STARTUPDIR/install_ca_cert.sh
RUN mkdir -p $INST_SCRIPTS/certificates && chmod 777 $INST_SCRIPTS/certificates
RUN chmod 777 /usr/lib/firefox/distribution
RUN chmod 777 /etc/opt/chrome/policies/managed
RUN chmod 777 /usr/local/share/ca-certificates
RUN chmod 777 /etc/ssl/certs


# RUN chown 1000:0 $HOME
# RUN $STARTUPDIR/set_user_permission.sh $HOME

# ENV HOME /home/kasm-user
# WORKDIR $HOME
# RUN mkdir -p $HOME && chown -R 1000:0 $HOME

USER 1000
