#!/bin/bash

su -
adduser modulus 
exit
newgrp 

echo "Installing base packages"
apt install -y curl wget python3-pip linux-image-amd64 cups snapd git


snap install code intellij-idea-community --classic

apt install -y yakuake 

# Installing libvirt for minikube etc
apt install -y qemu-kvm libvirt-clients libvirt-daemon-system bridge-utils libguestfs-tools genisoimage virtinst libosinfo-bin

# Add user to libvirt groups
adduser modulus libvirt
adduser modulus libvirt-qemu

# Reload groups permissions
newgrp libvirt
newgrp libvirt-qemu

# Verify group permissions
id

# Python install
 apt install python3-pip
pip3 install pipenv

# Install zsh
echo "Installing zsh and oh-my-zsh"
 apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# kubernetes
echo "Installing kubectl"
snap install kubectl --classic


# Docker

echo "Installing docker"
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common


curl -fsSL https://download.docker.com/linux/debian/gpg |  apt-key add -


apt-key fingerprint 0EBFCD88
adduser modulus docker
newgrp docker

# Nvidia
echo "Installing nvidia-detect"
apt -y install nvidia-detect

# misc
snap install skype slack --classic
snap install spotify signal-desktop


