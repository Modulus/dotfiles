
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
source  ~/.env

# Debub slow zshrc
#zprof

