#!/usr/bin/env bash

alias 2to3='2to3 -f all -f buffer -f idioms -f set_literal -f ws_comma'
# Debian and derivatives
if command -v batcat >/dev/null 2>&1; then
    if ! command -v bat >/dev/null 2>&1; then
        alias bat='batcat'
    fi
fi
alias cath='tail -n +1'
alias d='df -h'
alias dus='\du -h --max-depth=1'
alias dus2='du | sort -nr | cut -f2- | xargs du -hs'
alias f='finger'
# Debian and derivatives
if command -v fdfind >/dev/null 2>&1; then
    if ! command -v fd >/dev/null 2>&1; then
        alias fd='fdfind'
    fi
fi
alias top='top -d 1'
alias edk='emacsclient -e "(kill-emacs)"'
alias eds='emacs --daemon'
alias e='emacsclient -t'
alias ec='emacsclient -c'
alias es='emacs -nw'
# For use of git diff inside working trees. TODO Shell completion doesn't work
# with it though?
alias gdiff='git wdiff --no-index'
alias gfr='git fetch --all; git rebase upstream/master'
# If exa is available, set preferred aliases to use it (and its different
# flags) rather than ls.
if command -v exa >/dev/null 2>&1; then
    source "${HOME}"/dotfiles/exa.bash
else
    source "${HOME}"/dotfiles/ls.bash
fi
alias mksrcinfo='makepkg --printsrcinfo > .SRCINFO'
alias psmem='ps aux --sort -rss'
alias scp='scp -p'
alias sd='svn diff --diff-cmd colordiff'
alias snv='svn'
alias sw='telnet towel.blinkenlights.nl'
alias t='tail -F -n 100 --sleep-interval=0.1'
alias tmux='tmux -2'
alias whcih='which'

# So I don't do stupid things.
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'

# These have to be run from $QC.
alias etags_qchem='find -L $PWD -not \( -path "./build" -prune \) -not \( -path "./.git" -prune \) -not \( -path "./.svn" -prune \) -not \( -path "./doc/html" -prune \) -name "*\.[chfpCHF]*" -print | etags --class-qualify --declarations -'
alias ctags_qchem='ctags -e --languages=-HTML,-JavaScript --links --verbose --totals -R'
# https://stackoverflow.com/a/4210072/3249688
cmd_qchem_cpp_filelist='find . -type f \( -path "./.ccls-cache/*" -o -path "./armadillo/*" -o -path "./thirdparty/*" -o -path "./build/CMakeFiles/*" \) -prune -o -name "*.[hC]" -print0'
# shellcheck disable=SC2139
alias qchem_cpp_filelist="${cmd_qchem_cpp_filelist}"
# shellcheck disable=SC2139
alias qchem_cppcheck="${cmd_qchem_cpp_filelist} | xargs -0 cppcheck --enable=all --language=c++ --std=c++11"
# shellcheck disable=SC2139
alias qchem_cpplint="${cmd_qchem_cpp_filelist} | xargs -0 cpplint --root=. --extensions=C --headers=h"
