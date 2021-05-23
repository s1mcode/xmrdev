#!/bin/bash
cd /root
apt-get update
apt install git build-essential cmake libuv1-dev uuid-dev libmicrohttpd-dev libssl-dev -y
git clone https://github.com/xmrig/xmrig-proxy.git
mkdir xmrig-proxy/build
cd xmrig-proxy/build
cmake ..
make
openssl genrsa -out server.key 1024
(echo "US"
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo "."
sleep 1
echo ".")|openssl req -days 365 -out server.pem -new -x509 -key server.key
wget https://raw.githubusercontent.com/OakhillBarrera/xmrdev/main/xmr-proxy/config.json
screen_name=$"my_screen"
screen -dmS $screen_name
cmd=$"chmod +x xmrig-proxy && ./xmrig-proxy";
screen -x -S $screen_name -p 0 -X stuff "$cmd"
screen -x -S $screen_name -p 0 -X stuff $'\n'

