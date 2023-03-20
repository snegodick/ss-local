FROM debian
ENV SS_SERVER 127.0.0.1
ENV SS_PORT 18499
ENV METHOD aes-256-cfb
ENV KEY=
ENV LOCALPORT 1080
RUN apt update && apt install -y shadowsocks-libev && rm -rf /var/lib/apt/lists/*
RUN echo '/usr/bin/ss-local -s $SS_SERVER -p $SS_PORT -m $METHOD -k $KEY -l $LOCALPORT -b 0.0.0.0' > /opt/docker-entrypoint.sh
ENTRYPOINT /bin/sh /opt/docker-entrypoint.sh
EXPOSE 1080