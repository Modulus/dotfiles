#!/bin/bash
echo "Installing brew packages"
brew install kubernetes-cli python@3.8 helm	openssh	\
minikube rbenv	sqlite	utf8proc autoconf gist moreutils p7zip readline	ssh-copy-id aws-iam-authenticator git helmfile vim \
telnet watch coreutils highlight perl ruby hashicorp/tap/terraform gnu-getopt	tldr wget \
eksctl	ipcalc node findutils tree go kind lua sops


echo "Installing brew cask packages"
brew cask install android-studio discord firefox google-chrome intellij-idea-ce spectacle virtualbox vlc \
docker flux google-cloud-sdk iterm2 signal spotify virtualbox-extension-pack \
dropbox google-backup-and-sync google-hangouts jetbrains-toolbox postman slack vagrant visual-studio-code

#android-studio-preview