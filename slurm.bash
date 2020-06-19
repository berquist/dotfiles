#!/usr/bin/env bash

alias c="scontrol show job -d"
format="\"%8i %9u %9a %9P %9q %35j %2t %10M %10l %5D %3C %z %R\""
flags="-S +i -o ${format}"
alias q="squeue -u $USER ${flags}"
alias qa="squeue -a ${flags}"

export SACCT_FORMAT=jobid,user,account,partition,jobname%30,state,start,end,exitcode,elapsed,nodelist,reqmem
alias sl="sacct -a | less"
