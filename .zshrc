#Dotfiles root location
DOTS=$HOME/dotfiles
export ZSH=$HOME/.oh-my-zsh
export EDITOR="vim"
TERM=xterm-256color
bindkey -v

# vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward

# add auto cd into directory
setopt AUTO_CD

# load sources
source $ZSH/oh-my-zsh.sh
source $DOTS/antigen/antigen.zsh
source /usr/share/autojump/autojump.sh

# ANTIGEN SETUP
antigen use oh-my-zsh

# antigen plugins
# WORKFLOW
antigen bundle debian
antigen bundle git
antigen bundle git-extras
antigen bundle Tarrasch/zsh-autoenv
antigen bundle colorize
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle compleat
antigen bundle copydir
antigen bundle cp
antigen bundle extract
antigen bundle history
antigen bundle autojump
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle last-working-dir
antigen bundle sudo
antigen bundle wd
antigen bundle colored-man
antigen bundle cp

# TMUX
antigen bundle tmux
antigen bundle tmuxinator

# VIM
antigen bundle vundle
antigen bundle vi-mode
antigen bundle fancy-ctrl-z

# NODE
antigen bundle node
antigen bundle npm
antigen bundle nvm
antigen bundle jsontools
antigen bundle meteor

# OTHERS
antigen bundle web-search
antigen bundle taskwarrior
antigen bundle cloudapp
antigen bundle heroku
antigen bundle docker
antigen bundle vagrant
antigen bundle postgres
antigen bundle nyan
antigen bundle chucknorris

# antigen themes
antigen theme robbyrussell
# using the sindresorhus/pure theme that does not require antigen theme to be defined
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

# Load antigen
antigen apply

# Autoload pure prompt
# autoload -U promptinit && promptinit
# optionally define some options
# PURE_CMD_MAX_EXEC_TIME=10
# prompt pure

# User configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/home/v3rt1go/.nvm/versions/node/v0.12.7/lib/node_modules
export PATH="/usr/local/heroku/bin:/home/agriciuc/.nvm/versions/node/v4.1.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
