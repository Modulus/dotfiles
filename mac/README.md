# Install home brew

install brew then

sudo chown -R $(whoami) $(brew --prefix)/*:wq
johnsigvaldskauge@BGOMAC-JOSKA131 mac % /usr/local/bin/brew update --force 

brew tap homebrew/cask-fonts 


# Steps
bash install-brew.sh
bash brew.sh
bash instal-shell.sh
bash deploy_csh.sh
source ~/.zshrc
bash install-pkgs.sh

# Set merge tool
git config --global merge.tool meld
