#!/bin/bash
echo "Installing brew packages"
brew install kubernetes-cli python@3.8 helm	openssh	\
minikube rbenv	sqlite	utf8proc autoconf gist moreutils p7zip readline	ssh-copy-id aws-iam-authenticator git helmfile vim \
telnet watch coreutils highlight perl ruby hashicorp/tap/terraform gnu-getopt	tldr wget \
eksctl	ipcalc node findutils tree go kind lua sops rustup-init java11 pyenv  libpq docker-compose jq haskell-stack


echo "Installing brew cask packages"
brew cask install  discord firefox  intellij-idea-ce spectacle  vlc \
docker flux google-cloud-sdk iterm2 signal spotify  \
dropbox google-backup-and-sync google-hangouts jetbrains-toolbox postman slack vagrant visual-studio-code google-cloud-sdk firefox brave-browser  visual-studio-code  \
tfenv


# virtualbox virtualbox-extension-pack
