#!/bin/sh
set -e

# Preprocess UPSTREAM_DNS to allow for multiple resolvers using the same syntax as lancache-dns
export UPSTREAM_DNS="$(echo -n "${UPSTREAM_DNS}" | sed 's/[;]/ /g')"

sed -i "s/UPSTREAM_DNS/${UPSTREAM_DNS}/"    /etc/sniproxy.conf



sniproxy -f -c /etc/sniproxy.conf 
