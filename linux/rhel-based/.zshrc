
# Shell
eval "$(starship init zsh)"

#PYthon stash
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Set kubeconfig and k8s stuff
export KUBECONFIG="$HOME.kube/microk8s:$HOME.kube/config"

export PATH="$PATH:/var/lib/snapd/snap/bin"


export PATH="$PATH:/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin"
export RUST_LOG=info

autoload -Uz compinit
compinit

source <(kubectl completion zsh)  # set up autocomplete in zsh into the current shell
#echo '[[ $commands[kubectl] ]] && source <(kubectl completion zsh)' >> ~/.zshrc # add autocomplete permanently to your zsh shell
[[ $commands[kubectl] ]] && source <(kubectl completion zsh)

alias k=kubectl
#complete -o default -F __start_kubectl k
source ~/.env

. "$HOME/.cargo/env"

