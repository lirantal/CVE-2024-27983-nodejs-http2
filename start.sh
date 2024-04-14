#!/usr/bin/env sh

# create certificates for localhost serving of https
openssl req -x509 -newkey rsa:2048 -nodes -sha256 -subj '/CN=localhost' \
  -keyout localhost-privkey.pem -out localhost-cert.pem

# build and start server in docker
docker build -t http2-node .
docker run -p 7777:7777 http2-node
