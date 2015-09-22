#!usr/bin/env bash

# Command prompt config
PS1="\W $ "

# Required for rbenv
eval "$(rbenv init -)"

# Reference bash aliases if present
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi
