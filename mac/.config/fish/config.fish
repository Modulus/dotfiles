if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Ollama stash
alias o=ollama


# Golang stash
export GOPATH=$HOME/go



starship init fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"

alias k=oc


# pyenv
 pyenv init - fish | source