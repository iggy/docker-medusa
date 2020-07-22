FROM alpine:edge
MAINTAINER iggy@iggy.ninja

ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US.UTF-8' \
    TERM='xterm'

RUN apk --no-cache add ca-certificates tzdata unrar mediainfo python3 && \
    wget -q https://github.com/pymedusa/Medusa/archive/master.zip && \
    unzip -q master.zip && \
    mv Medusa-master /medusa && \
    rm -rf master.zip /tmp/* /var/cache/apk/* /root/.cache /usr/lib/python3.8/__pycache__/*

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

VOLUME ["/config", "/data", "/cache"]

EXPOSE 8081

CMD ["/start.sh"]
