#!/usr/bin/env bash

unalias ls 2>/dev/null
unalias l 2>/dev/null
unalias la 2>/dev/null
unalias lh 2>/dev/null

alias ls='exa'
alias l='pwd; ls -Fl'
alias la='l -a'
alias lt='l -s modified -r'
alias lh='lt | head'
