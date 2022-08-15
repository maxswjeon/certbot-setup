#!/bin/bash

docker exec certbot certbot certonly --dns-cloudflare --dns-cloudflare-credentials /opt/cloudflare/credentials --agree-tos -m maxswjeon@naver.com -d $1 --rsa-key-size 4096
docker exec certbot certbot certonly --dns-cloudflare --dns-cloudflare-credentials /opt/cloudflare/credentials --agree-tos -m maxswjeon@naver.com -d $1 --key-type ecdsa --elliptic-curve secp384r1 --cert-name "${1}_ecc" 
