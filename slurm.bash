#!/usr/bin/env bash

format="\"%8i %9u %9P %35j %2t %10M %10l %5D %3C %R %H %I %J %z\""
flags="-S +i -o ${format}"
alias q="squeue -u $USER ${flags}"
alias qa="squeue -a ${flags}"
alias c="scontrol show job -d"
alias walltimes='sacctmgr show qos'

export SACCT_FORMAT=jobid,user,account,partition,jobname%30,state,exitcode,elapsed,nodelist,reqmem
