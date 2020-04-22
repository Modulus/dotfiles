#!/bin/bash

# su -
# adduser modulus 
# exit
# newgrp 

echo "Installing base packages"
sudo apt install -y curl wget python3-pip linux-image-amd64 cups snapd git dnsutils vim 


sudo snap install code intellij-idea-community --classic

sudo apt install -y yakuake 

echo "Installing bluetooth packages"
sudo apt install -y pulseaudio pulseaudio-module-bluetooth pavucontrol bluez-firmware

sudo service bluetooth restart
sudo killall pulseaudio
sudo apt install blueman


echo "Installing postgresql-client"
sudo apt install -y postgresql-client

# Installing libvirt for minikube etc
sudo apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils libguestfs-tools genisoimage virtinst libosinfo-bin

# Add user to libvirt groups
sudo adduser modulus libvirt
sudo adduser modulus libvirt-qemu

sudo apt install -y virt-manager

# Reload groups permissions
# newgrp libvirt
# newgrp libvirt-qemu

# Verify group permissions
#id

# Python install
echo "Installing pyenv prereqs"
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git zlibc zlib1g-dev
echo "Installing python and tools for it"
sudo apt install -y python3-pip
# Pyenv
echo "Installing pyenv"
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

echo "Run pyenv doctor to check config"
pip3 install pipenv

# Install zsh
echo "Installing zsh and oh-my-zsh"
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# kubernetes
echo "Installing kubectl"
sudo snap install kubectl --classic

#!/bin/bash
echo "Installing minikube"
sudo curl -Lo  /tmp/minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && sudo chmod +x /tmp/minikube && sudo install /tmp/minikube /usr/local/bin/


# Docker

echo "Installing docker"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common


sudo curl -fsSL https://download.docker.com/linux/debian/gpg |  sudo apt-key add -


sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

sudo adduser modulus docker
# newgrp docker

# Nvidia
echo "Installing nvidia-detect"
sudo apt -y install nvidia-detect

# misc
sudo snap install skype --classic
sudo snap install slack --classic
sudo snap install signal-desktop
sudo snap install spotify 
sudo snap install intellij-idea-community --classic
sudo snap install discord

# Nvm
echo "Install nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash


# Rust
echo "Installing rustup"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


