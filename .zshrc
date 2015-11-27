#Dotfiles root location
DOTS=$HOME/dotfiles
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="sorin"
# ZSH_THEME="re5et"
# ZSH_THEME="tjkirch"
# ZSH_THEME="rgm"
# ZSH_THEME="pmcgeek"

# Disable auto - title to prevent tmux windows to be renames
DISABLE_AUTO_TITLE=true

# We let tmux save the path each time the shell prompt is displayed
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'

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
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"

# load sources
source $ZSH/oh-my-zsh.sh
source $DOTS/antigen/antigen.zsh

# Antigen bundles and theme include
[[ -f ~/.zshrc.bundles ]] && source ~/.zshrc.bundles

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases
