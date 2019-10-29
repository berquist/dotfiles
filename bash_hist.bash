#!/usr/bin/env bash

export PS1="[\u@\h \w]\$ "

# http://stackoverflow.com/questions/9457233/unlimited-bash-history
shopt -s histappend
export HISTCONTROL=
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %X] "
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; ${PROMPT_COMMAND}"

GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_FETCH_REMOTE_STATUS=0
GIT_PROMPT_SHOW_UPSTREAM=1
GIT_PROMPT_SHOW_UNTRACKED_FILES=all
# source "${HOME}"/repositories/bash-git-prompt/gitprompt.sh
