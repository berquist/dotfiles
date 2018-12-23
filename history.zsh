#!/usr/bin/env zsh

_size=1000000000
export HISTCONTROL=
export HISTFILESIZE=${_size}
export HISTSIZE=${_size}
export HISTFILE="${HOME}"/.zhistfile
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"
# Max number of history lines saved
export SAVEHIST=${_size}
