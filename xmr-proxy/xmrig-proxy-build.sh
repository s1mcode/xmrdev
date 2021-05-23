#!/bin/bash
apt-get update
apt install git build-essential cmake libuv1-dev uuid-dev libmicrohttpd-dev libssl-dev -y
git clone https://github.com/xmrig/xmrig-proxy.git
mkdir xmrig-proxy/build
cd xmrig-proxy/build
cmake ..
make
openssl genrsa -out server.key 1024
openssl req -days 365 -out server.pem -new -x509 -key server.key
US
.
.
.
.
.
.
wget https://raw.githubusercontent.com/OakhillBarrera/xmrdev/main/xmr-proxy/config.json
screen -S pool
chmod +x xmrig-proxy && ./xmrig-proxy