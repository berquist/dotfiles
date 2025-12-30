#!/usr/bin/env bash

unal() {
    # shellcheck disable=SC2086
    unalias $1 2> /dev/null
}

alias 2to3='2to3 -f all -f buffer -f idioms -f set_literal -f ws_comma'
# Debian and derivatives
if command -v batcat > /dev/null 2>&1; then
    if ! command -v bat > /dev/null 2>&1; then
        alias bat='batcat'
    fi
fi
alias bhead='bat -r :10'
alias cath='tail -n +1'
alias cfd='/usr/share/clang/clang-format-diff.py'
alias d='df -h'
# https://hub.docker.com/r/alpine/dfimage
alias dfimage="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage"
# dfimage -sV=1.36 nginx:latest
alias dus='\du -h --max-depth=1'
alias dus2='du | sort -nr | cut -f2- | xargs du -hs'
alias f='finger'
# Debian and derivatives
if command -v fdfind > /dev/null 2>&1; then
    if ! command -v fd > /dev/null 2>&1; then
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
alias gi='git'  # typo
alias gti='git' # typo
alias it='git'  # typo
alias julia='julialauncher'
alias kubectl='minikube kubectl --'
# If exa is available, set preferred aliases to use it (and its different
# flags) rather than ls.
# eza is the maintained fork of exa.
if command -v eza > /dev/null 2>&1; then
    unal ls
    unal l
    unal la
    unal lh

    alias ls='eza'
    alias l='pwd; ls --classify -l'
    alias la='l -a'
    alias lt='l -s modified -r'
    alias lh='lt | head'
elif command -v exa > /dev/null 2>&1; then
    unal ls
    unal l
    unal la
    unal lh

    alias ls='exa'
    alias l='pwd; ls -Fl'
    alias la='l -a'
    alias lt='l -s modified -r'
    alias lh='lt | head'
else
    unal ls
    unal l
    unal la
    unal lh

    alias l='pwd; ls -hFl'
    alias la='l -a'
    alias lh='l -t | head'
fi
alias mksrcinfo='makepkg --printsrcinfo > .SRCINFO'
if ! command -v pre-commit > /dev/null 2>&1; then
    alias pre-commit=prek
fi
alias psmem='ps aux --sort -rss'
if ! command -v pyright > /dev/null 2>&1; then
    if command -v basedpyright > /dev/null 2>&1; then
        alias pyright='basedpyright'
    fi
fi
alias scp='scp -p'
alias sd='svn diff --diff-cmd colordiff'
alias snv='svn' # typo
alias sw='telnet towel.blinkenlights.nl'
alias t='tail -F -n 100 --sleep-interval=0.1'
# 1. There are a lot of versions of tree that don't take this argument
# 2. I have been surprised by the results of this multiple times in a short
# period
#
# alias tree='tree --gitignore'
alias whcih='which' # typo

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
