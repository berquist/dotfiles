#!/usr/bin/env bash

alias 2to3='2to3 -f all -f buffer -f idioms -f set_literal -f ws_comma'
alias cath='tail -n +1'
alias d='df -h'
alias dus='\du -h --max-depth=1'
alias dus2='du | sort -nr | cut -f2- | xargs du -hs'
alias f='finger'
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
alias tmux='tmux -2'
if command -v exa 1>/dev/null 2>&1; then
    source "${HOME}"/dotfiles/exa.bash
else
    source "${HOME}"/dotfiles/ls.bash
fi
alias mksrcinfo='makepkg --printsrcinfo > .SRCINFO'
alias psmem='ps aux --sort -rss'
alias scp='scp -p'
alias sw='telnet towel.blinkenlights.nl'
alias t='tail -F -n 100 --sleep-interval=0.1'
alias whcih='which'

# So I don't do stupid things.
alias cp='cp -i -v'
alias mv='mv -i -v'
alias rm='rm -i -v'

# alias tags_dalton=''
# These have to be run from $QC.
alias etags_qchem='find -L $PWD -not \( -path "./build" -prune \) -not \( -path "./.git" -prune \) -not \( -path "./.svn" -prune \) -not \( -path "./doc/html" -prune \) -name "*\.[chfpCHF]*" -print | etags --class-qualify --declarations -'
alias ctags_qchem='ctags -e --languages=-HTML,-JavaScript --links --verbose --totals -R'
alias qchem_cppcheck='find . -type f -name "*.[hC]" | xargs cppcheck --enable=all --language=c++ --std=c++03'
alias qchem_cpplint='find . -type f -name "*.[hC]" | xargs cpplint --root=. --extensions=C --headers=h'
