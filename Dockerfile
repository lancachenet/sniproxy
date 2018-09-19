FROM alpine:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net>

RUN	apk update \
	&& apk add sniproxy

COPY overlay/ /

EXPOSE 443

CMD [ "sniproxy", "-f", "-c", "/etc/sniproxy.conf" ]
