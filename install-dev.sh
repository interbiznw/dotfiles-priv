#!/bin/bash

sudo apt-get install -y \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python \
      zlib1g-dev wget bsdmainutils automake docker.io rbenv golang-go docker-compose net-tools
      
sudo usermod -aG docker $USER

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 14.18.2

npm install -g http-server

npm install -g yarn

curl https://rclone.org/install.sh | sudo bash

FILE=/home/$USER/.ssh/id_rsa

if [ -f "$FILE" ]; then
      echo ".ssh dir and id_rsa exists, skipping"
else
      ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
fi
echo "don't delete this file as it enables developer exports to be added to bash.rc at runtime" > ~/.devexport_true
echo "Dev tools Installed"
