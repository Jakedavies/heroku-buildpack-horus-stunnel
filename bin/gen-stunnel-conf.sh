#!/usr/bin/env bash

n=1

mkdir -p /app/vendor/stunnel/var/run/stunnel/
cat >> /app/vendor/stunnel/stunnel.conf << EOFEOF
sslVersion = all

socket = l:TCP_NODELAY=1

socket = r:TCP_NODELAY=1
client = yes
[squid-proxy]
accept = 8106
connect = 104.156.250.178:443
EOFEOF
chmod go-rwx /app/vendor/stunnel/*
