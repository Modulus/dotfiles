# Install home brew

install brew then

sudo chown -R $(whoami) $(brew --prefix)/*:wq
johnsigvaldskauge@BGOMAC-JOSKA131 mac % /usr/local/bin/brew update --force 

brew tap homebrew/cask-fonts 

# Use stow
brew install stow

# Information about stow
Since this folder structure deviates from the regular stow setup, we need to specify a target directory such that the files arent linked to ~/mac/.* but your home folder.
This is done with the -t flag for the stow command.

## To setup dotfile links run

```
stow -t ~ . --adopt
```


# Install brew bundle
brew bundle --file ~/.brew/Brewfile


## On clean machine run steps

NB! You only need to run these on a new/clean machine
bash ~/.scripts/init.sh

# Slow shell start
https://blog.patshead.com/2011/04/improve-your-oh-my-zsh-startup-time-maybe.html

# Added lazy load of pyenv to this shell
This helped immensly
Trying to figure out a way to lazyload  autoload -Uz compinstall

# To test shell loading
exec zsh


### Fish
fish_add_path /opt/homebrew/bin

fish_update_completions
set -x LANG en_US.UTF-8
fish_config
