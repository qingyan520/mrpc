#! /bin/sh
set -e
cd build
rm -rf ./*
cmake ..
make
cd ..
if [ ! -d "/usr/local/include/mrpc" ]; then
  sudo mkdir -p /usr/local/include/mrpc
fi

sudo cp -r ./include/*  /usr/local/include/mrpc
sudo cp -r ./lib/* /usr/local/lib