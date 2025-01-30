if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Ollama stash
alias o=ollama




starship init fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"

alias k=oc


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

