FROM alpine:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net>

RUN	apk update \
	&& apk add sniproxy

COPY . /

EXPOSE 443

ENTRYPOINT [ "sniproxy", "-f" ]
