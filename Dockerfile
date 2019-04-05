FROM alpine:edge
MAINTAINER iggy@iggy.ninja

ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US.UTF-8' \
    TERM='xterm'

RUN apk -U upgrade && \
    apk -U add \
        ca-certificates \
        git \
        tzdata \
        py3-twitter \
        py3-jwt \
        py3-requests-oauthlib \
        py3-jsonrpclib \
        py3-chardet \
        py3-mako \
        py3-tornado \
        py3-requests \
        py3-markdown \
        py3-feedparser \
        py3-dateutil \
        py3-future \
        py3-configparser \
        py3-lockfile \
        py3-configobj \
        py3-six \
        py3-certifi \
        py3-beautifulsoup4 \
        py3-openssl \
        py3-cheetah \
        python3-dev \
        && \
    pip3 --no-cache-dir install setuptools && \
    pip3 --no-cache-dir install requirements && \
    git clone --depth 1 https://github.com/pymedusa/Medusa.git /medusa && \
    apk del make gcc g++ python-dev && \
    rm -rf /tmp && \
    rm -rf /var/cache/apk/*

ADD ./start.sh /start.sh
RUN chmod u+x  /start.sh

VOLUME ["/config", "/data", "/cache"]

EXPOSE 8081

CMD ["/start.sh"]
