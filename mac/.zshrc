
# Profile slow startup
#zmodload zsh/zprof


# Starship stuff
eval "$(starship init zsh)"

# Pyenv stuff
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
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

# Debub slow zshrc
#zprof


# The following lines were added by compinstall
# zstyle :compinstall filename '/Users/john.sigvald.skauge/.zshrc'

# End of lines added by compinstall
alias bump=helm-chart-version-bumper

# Initalize secrets
source  ~/.env
