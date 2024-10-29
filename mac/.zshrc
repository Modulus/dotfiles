
# Profile slow startup
#zmodload zsh/zprof



 autoload -Uz compinit
 compinit

#G Starship stuff
eval "$(starship init zsh)"

# Pyenv stuff
#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"


# Added lazy loading of pyenv Based on this setup: https://github.com/davidparsson/zsh-pyenv-lazy/blob/master/pyenv-lazy.plugin.zsh
# Try to find pyenv, if it's not on the path
export PYENV_ROOT="${PYENV_ROOT:=${HOME}/.pyenv}"
if ! type pyenv > /dev/null && [ -f "${PYENV_ROOT}/bin/pyenv" ]; then
    export PATH="${PYENV_ROOT}/bin:${PATH}"
fi

# Lazy load pyenv
if type pyenv > /dev/null; then
    export PATH="${PYENV_ROOT}/bin:${PYENV_ROOT}/shims:${PATH}"
    function pyenv() {
        unset -f pyenv
        eval "$(command pyenv init -)"
        if [[ -n "${ZSH_PYENV_LAZY_VIRTUALENV}" ]]; then
            eval "$(command pyenv virtualenv-init -)"
        fi
        pyenv $@
    }
fi


# LS color
export CLICOLOR=1


if [ /opt/homebrew/bin/oc ]; then
  source <(oc completion zsh)
  compdef _oc oc
  alias k=oc

fi


# Kubernetes stuff
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
source <(helm completion zsh)



# Java stuff
#export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
#export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"



# The following lines were added by compinstall
# zstyle :compinstall filename '/Users/john.sigvald.skauge/.zshrc'

# End of lines added by compinstall
alias bump=helm-chart-version-bumper

# Initalize secrets
test -f ~/.env && source  ~/.env || echo "~/.env file does not exists, add this!!!!!"

# Debub slow zshrc
#zprof
#

# Node stash for multiple node version
# export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# From https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/
 # Add default node to path
export PATH=~/.nvm/versions/node/v18.20.4/bin:$PATH
# Load NVM
export NVM_DIR=~/.nvm
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh" --no-use

# Docker fix for error Error: ENFILE: file table overflow, scandir '/workspaces/sre-backstage/backstage/node_modules/@swagger-api/apidom-ns-openapi-2/es' using npm
# Fix found here: http://blog.mact.me/2014/10/22/yosemite-upgrade-changes-open-file-limit
# To se more details, se .scripts/files.sh
#ulimit -n 65536 65536
# Belive it or not but this is needed for node
#ulimit -n 1000000 unlimited


# Docker completions
#fpath=(~/.docker/completions \\$fpath)
#
test -f ~/.zshrc.db && source ~/.zshrc.dnb

export PATH="$PATH:$(yarn global bin)"
#zprof
