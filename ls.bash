#!/usr/bin/env bash

unalias ls 2>/dev/null
unalias l 2>/dev/null
unalias la 2>/dev/null
unalias lh 2>/dev/null

alias l='pwd; ls -hFl'
alias la='l -a'
alias lh='l -t | head'
