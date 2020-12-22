unalias ls 2>/dev/null
unalias l 2>/dev/null
unalias la 2>/dev/null
unalias lh 2>/dev/null

alias ls='exa'
alias l='pwd; ls -Fl'
alias la='l -a'
alias lh='l -s modified -r | head'
