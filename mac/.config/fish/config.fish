if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Ollama stash
alias o=ollama




starship init fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"


# Kubernetes

alias k=oc
fish_add_path -g ~/.krew/bin



# pyenv
pyenv init - fish | source

# Java
fish_add_path -g $JAVA_HOME/bin
fish_add_path -g /opt/homebrew/opt/openjdk/bin

# Node
fish_add_path -g ~/.nvm/versions/node/v18.20.4/bin


# AI stash
fish_add_path -g /Users/john.sigvald.skauge/.cache/lm-studio/bin

# Golang
export GOPATH=$HOME/go


# Rust
fish_add_path -g ~/.cargo/bin

alias bump=helm-chart-version-bumper

# Node
fish_add_path -g ~/.nvm/versions/node/v18.20.4/bin

 export NVM_DIR="$HOME/.nvm"
 # [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
 #[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

