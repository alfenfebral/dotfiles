# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=( zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.zshrc_secret

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add or overide env settings 
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/sh:$PATH
export PATH=/home/neo/.local/share/solana/install/active_release/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
export EDITOR='nvim'
export VISUAL='nvim'
export GO111MODULE=on
export COLORTERM=truecolor
export SE_GKE_GCLOUD_AUTH_PLUGIN=True


# Alias, makes you life easier
alias gal='git add .'
alias gpom='git push -u origin master'
alias gpo='git push -u origin'
alias gp='git push'
alias gcm='git commit -m'
alias gst='git status'
alias gd='git diff'
alias dp='docker ps'
alias dc='docker container ls' 
alias di='docker image ls' 
alias dcu='docker-compose up'
alias dcub='docker-compose up --build'
alias dc='docker-compose down' 
alias t=tmux
alias c='clear'
alias e='exit'
alias gc='gcloud'
alias vi='nvim'
alias vim='nvim'

# kubectl
alias k='kubectl'
alias kf='kubectl -n frontend'
alias kb='kubectl -n backend'
alias km='kubectl -n monitoring'
alias kcontext='kubectl config current-context'
alias kmainnet="kubectl config set-cluster ${MAINNET_CLUSTER_NAME} && kubectl config set-context ${MAINNET_CLUSTER_NAME} && kubectl config use-context ${MAINNET_CLUSTER_NAME}"
alias ktestnet="kubectl config set-cluster ${TESTNET_CLUSTER_NAME} && kubectl config set-context ${TESTNET_CLUSTER_NAME} && kubectl config use-context ${TESTNET_CLUSTER_NAME}"

# wsl
alias clion='"/mnt/c/Program Files/JetBrains/CLion 2021.3.2/bin/clion64.exe"'
alias e='explorer.exe'
alias clion='clion.sh'
alias goland='goland.sh'

# linux 
alias cget='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor'
alias cperformance='echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias csaver='echo powersave | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias startwin10='virsh start win10 && looking-glass-client win:fullScreen'
alias shutwin10='virsh shutdown win10'
alias sound='pavucontrol'

# sh files
alias space='space.sh'
alias notes='notes.sh'
alias bwpass='bwpass.sh'
alias bwnotes='bwnotes.sh'
alias ts=~/sh/split_w_tmux.sh

[ -f "/home/neo/.ghcup/env" ] && source "/home/neo/.ghcup/env" # ghcup-env
