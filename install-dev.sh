#!/bin/bash

sudo apt-get install -y \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python \
      zlib1g-dev wget bsdmainutils automake docker.io
      
sudo usermod -aG docker $USER

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

nvm install 14.18.2

npm install -g http-server

npm install -g yarn

ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa

echo "Dev tools Installed"
