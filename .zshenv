# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# Set xterm to 256 colors only if term is xterm
if [[ $TERM == xterm  ]]; then
  TERM=xterm-256color
fi

# User configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:$HOME/.nvm/versions/node/v0.12.7/lib/node_modules
export PATH="/usr/local/heroku/bin:$HOME/.nvm/versions/node/v4.1.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
