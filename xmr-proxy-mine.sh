#!/bin/bash
apt-get update
wait
apt-get -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
wait
git clone https://github.com/xmrig/xmrig.git
wait
mkdir xmrig/build && cd xmrig/build
wait
cmake ..
wait
make -j$(nproc)
wait
./xmrig --tls -o $1 -B --syslog --randomx-1gb-pages --rig-id=$2
