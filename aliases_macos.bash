unalias ls
alias ls='ls -G'      # enable colorized output
unalias l
alias l='pwd; ls -hl' # list format and human-readable sizes
unalias la
alias la='l -a'       # hidden files
unalias t
alias t='tail -F -n 100' # no sleep interval on BSD tail?
unalias top
alias top='top -u'

# Quick way to rebuild the Launch Services database and get rid
# of duplicates in the Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

alias doupgrade='brew update && brew upgrade && brew cleanup'
