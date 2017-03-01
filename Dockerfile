FROM alpine:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net>

RUN	apk update \
	&& apk add sniproxy

COPY root/ /

EXPOSE 443

ENTRYPOINT [ "sniproxy -f" ]
