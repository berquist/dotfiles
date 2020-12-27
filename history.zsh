#!/usr/bin/env zsh

_size=1000000000
export HISTCONTROL=
export HISTFILESIZE=${_size}
export HISTSIZE=${_size}
export HISTFILE="${HOME}"/.zhistfile
# Max number of history lines saved
export SAVEHIST=${_size}

## History command configuration
setopt append_history
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data


function omz_history {
  local list
  zparseopts -E l=list

  if [[ -n "$list" ]]; then
    # if -l provided, run as if calling `fc' directly
    builtin fc "$@"
  else
    # unless a number is provided, show all history events (starting from 1)
    [[ ${@[-1]-} = *[0-9]* ]] && builtin fc -l "$@" || builtin fc -l "$@" 1
  fi
}

alias history='omz_history -i'
