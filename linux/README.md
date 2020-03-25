## Intro
This setup has been tested and works on Debian 10 buster

# Spaceship theme

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

Symlink spaceship.zsh-theme to your oh-my-zsh custom themes directory:

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

Set ZSH_THEME="spaceship" in your .zshrc.

# vim
I use VimPlug for plugins

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


PlugInstall


# Use
bash install.sh