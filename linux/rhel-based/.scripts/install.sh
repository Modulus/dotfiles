dnf install vim-enhanced yakuake
localectl set-keymap no
localectl set-x11-keymap no

# Install csh
#sudo dnf install tcsh 
#which csh
#chsh to output over

sudo dnf install -y zsh
chsh -s $(which zsh)
# dotfiles support
sudo dnf intall -y stow


sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker $USER
sudo dnf -y kubernetes-client
sudo dnf install rustup
rustup-init

sudo dnf install krita

# Put this in the shell profile file
source "$HOME/.cargo/env"

echo "Installing pyenv"
curl https://pyenv.run | bash


# Put this in the shell profile
sudo yum -y install git gcc zlib-devel bzip2-devel readline-devel sqlite-devel openssl-devel
#sudo dnf install -y
sudo dnf install libffi-devel

eval "$(pyenv virtualenv-init -)"
sudo dnf install python3-tkinter

# Install starship
curl -sS https://starship.rs/install.sh | sh
eval "$(starship init zsh)"


# Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Other tools
sudo dnf -y install kdenlive krita gimp

# Sjekk ut for Milian
# GCompris 

# sudo dnf group install --with-optional virtualization
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo dnf install virt-manager




# Anti virus
sudo dnf install -y clamav

# Raspberry pi stash
sudo dnf install -y rpi-imager

# Gaming
sudo dnf install -y discord


# Terraform 
sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf -y install terraform

# Azure cli
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

sudo dnf install -y https://packages.microsoft.com/config/rhel/9.0/packages-microsoft-prod.rpm

sudo dnf install -y azure-cli

# Steam
# https://docs.fedoraproject.org/en-US/gaming/proton/
#sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

#sudo dnf config-manager --enable fedora-cisco-openh264 -y
#sudo dnf install steam -y

# Homebrew on linux
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Machine learning stuff
sudo dnf install xz xz-devel xz-libs


# VIm stash
sudo dnf install -y python3-filetype

# Flatpak
sudo dnf install -y flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# For python 3.13.0
sudo dnf install -y python3-tkinter mingw64-python3-tkinter -y tk-devel
