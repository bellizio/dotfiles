#!usr/bin/env bash

# Command prompt config
PS1='\W\[\e[0;32m\]$(__git_ps1 " (%s)")\[\e[m\] 🌮  '

# Required for nvm
export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

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
