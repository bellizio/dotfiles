#!usr/bin/env bash

# Command prompt config
PS1='\W\[\e[0;32m\]$(__git_ps1 " (%s)")\[\e[m\] 🌮  '

# Required for rbenv
eval "$(rbenv init -)"

# Required for nvm
export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Increase ulimit
ulimit -n 1024

# Reference bash aliases if present
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Reference git prompt if present
if [ -f ~/.git-prompt.sh ]; then
. ~/.git-prompt.sh
fi

# Reference .functions if present
if [ -f ~/.functions ]; then
. ~/.functions
fi

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
