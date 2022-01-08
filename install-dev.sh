#!/bin/bash

sudo apt-get install -y \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python \
      zlib1g-dev wget bsdmainutils automake docker.io
      
sudo usermod -aG docker $USER

echo "Dev tools Installed"