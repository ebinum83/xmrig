#!/bin/bash

sudo apt update
sudo apt upgrade -y
mkdir -p build 
cd scripts
./build_deps.sh 
cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
