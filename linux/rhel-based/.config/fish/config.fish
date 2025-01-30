if status is-interactive
    # Commands to run in interactive sessions can go here
end
# Ollama stash
alias o=ollama


# Golang stash
export GOPATH=$HOME/go



starship init fish | source


alias k=kubectl

#complete -o default -F __start_kubectl k
#source ~/.env

#. "$HOME/.cargo/env"

# pyenv
 pyenv init - fish | source


# Rust
fish_add_path -g ~/.cargo/bin

alias bump=helm-chart-version-bumper