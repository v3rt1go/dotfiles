# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# Set xterm to 256 colors only if term is xterm
if [[ $TERM == xterm  ]]; then
  TERM=xterm-256color
fi

# Base16 Shell
#BASE16_SHELL="$HOME/.config/base16-shell/base16-tomorrow.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# User configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/home/v3rt1go/.linuxbrew/bin:/home/v3rt1go/.nvm/versions/node/v5.1.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ $COLORTERM = gnome-terminal && ! $TERM = screen-256color ]] && TERM=xterm-256color
