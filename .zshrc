#Dotfiles root location
DOTS=$HOME/dotfiles
export ZSH=$HOME/.oh-my-zsh

# history settings
setopt hist_ignore_all_dups inc_append_history
HISTFILE=~/.zhistory
HISTSIZE=4096
SAVEHIST=4096

# add auto cd into directory and extended globbing
setopt autocd extendedglob 

# Allow [ or ] whereever you want
unsetopt nomatch

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# handy keybindings
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^K" kill-line
bindkey "^R" history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey "^P" history-search-backward
bindkey '^N' history-search-forward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughgu

# load sources
source $ZSH/oh-my-zsh.sh
source $DOTS/antigen/antigen.zsh
source /usr/share/autojump/autojump.sh

# Antigen bundles and theme include
[[ -f ~/.zshrc.bundles ]] && source ~/.zshrc.bundles

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
