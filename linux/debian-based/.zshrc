


eval "$(starship init zsh)"


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


eval "$(pyenv virtualenv-init -)"
export KUBECONFIG="$HOME/.kube/config:$HOME/.kube/microk8s"
