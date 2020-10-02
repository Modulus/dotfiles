#Terraform
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

# operator-sdk
#source <(operator-sdk completion zsh)
# SOPS monitoring account
export SOPS_KMS_ARN="xxxxx"

# Node
#export NVM_DIR="$HOME/.nvm"
#echo "to load node: 'loadnvm'"
#alias loadnvm=". /usr/local/opt/nvm/nvm.sh"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
 

# Flutter
#export PATH=/opt/flutter/flutter/bin:$PATH


# Java
#export HOME_JAVA=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home/
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"

# Google cloud
#export GOOGLE_CREDENTIALS=~/.gcloud/sumorelevansteamet-project001-7c37d5f70d17.json
# export GOOGLE_CREDENTIALS=/Users/johnsigvaldskauge/.config/gcloud/application_default_credentials.json
export GOOGLE_APPLICATION_CREDENTIALS=~/.config/gcloud/application_default_credentials.json

#istio 
#export PATH="$PATH:/Users/johnsigvaldskauge/istio/istio-1.0.1/bin"
#export PATH="$PATH:/Users/johnsigvaldskauge/istio/istio-1.0.0/bin"
#export PATH="$PATH:/Users/johnsigvaldskauge/istio/istio-1.0.3/bin"

# Golang
export GOPATH=~/GoProjects

# Ansible
export ANSIBLE_VAULT_PASSWORD_FILE=~/.ansible_vault_interaktiv.txt


# Python
#export PIPENV_VENV_IN_PROJECT=1
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#echo "To load python virtualenvwrapper: loadvenv"
#alias loadvenv="source /usr/local/bin/virtualenvwrapper.sh"
export ZSH=/Users/johnsigvaldskauge/.oh-my-zsh
#alias python="python3"
#alias pip="pip3"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi


# Gcloud
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
export CLOUDSDK_CONTAINER_USE_V1_API_CLIENT=false
export CONFIG_FILE=~/kubespray/inventory/hosts.ini
source <(kubectl completion zsh)

# kops
#source /usr/local/etc/bash_completion.d

#Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH=$PATH:/Users/johnsigvaldskauge/Library/Python/3.7/bin:$GOPATH/bin
# Path to your oh-my-zsh installation.


#Kubernetes
#export KOPS_STATE_STORE=s3://xxxxxxxx
#export KUBECONFIG=~/.kube/config
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"
# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins (git zsh-syntax-highlighting zsh-autosuggestions git-flow history node npm kubectl)
#plugins (git zsh-syntax-highlighting zsh-autosuggestions git-flow kubectl)



source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LC_ALL=no_NO.UTF-8

export LANG=no_NO.UTF-8


# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Rust
source ~/.cargo/env
