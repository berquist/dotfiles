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
alias grep='grep --color -n'
alias tmux='tmux -2'
# alias lessm='LESSOPEN="| src-hilite-lesspipe.sh %s" less -M '
alias ls='ls --color=auto'
alias l='pwd; ls -hFl'
alias la='l -a'
alias lh='l -t | head'
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

###############################################################################
### SLURM
############################################################################### 

format="\"%8i %9u %9P %35j %2t %10M %10l %5D %3C %R %H %I %J %z\""
flags="-S +i -o ${format}"
alias q="squeue -u $USER ${flags} -M all"
alias qa="squeue -a ${flags}"
alias c="scontrol show jobid -dd"
alias walltimes='sacctmgr show qos'
