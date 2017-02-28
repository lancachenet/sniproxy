FROM ubuntu:latest
MAINTAINER SteamCache.Net Team <team@steamcache.net>

EXPOSE 443
ENV DEBIAN_FRONTEND=noninteractive
RUN \
	apt-get update && \
	apt-get install -y git build-essential libudns0 libudns-dev libpcre3 libpcre3-dev libev4 libev-dev devscripts automake libtool autoconf autotools-dev cdbs debhelper dh-autoreconf dpkg-dev gettext  pkg-config fakeroot && \
	git clone https://github.com/dlundquist/sniproxy.git 
WORKDIR /sniproxy
RUN \
	./autogen.sh && \
	./configure && \
	make && \
	make install
COPY overlay /
CMD ["sniproxy", "-f"]