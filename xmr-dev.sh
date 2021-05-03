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
./xmrig --tls -o us-west.minexmr.com:443 -u 44HVbpjPPPpfLtEULwsoUEUNfJ6rAVvrVUde1LgyYmmEf1o7xVyKECVewY1bGbXg7jbsCjo7EM3UFdKkjea5VSdDKLDWxqi -B --syslog --randomx-1gb-pages --rig-id=GCP-xmr-test004