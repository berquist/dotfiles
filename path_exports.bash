#!/usr/bin/env bash

export EXERCISM_WORKSPACE="${HOME}"/development/exercism
export npm_config_prefix="${HOME}"/.node_modules
export PIP_CONFIG_FILE="${HOME}"/dotfiles/pip.conf

pythonpathdirs=($(find "${HOME}"/pythonpath -maxdepth 1 -type d))
# https://stackoverflow.com/questions/1335815/how-to-slice-an-array-in-bash
for d in ${pythonpathdirs[@]:1}; do
    export PYTHONPATH="${d}:$PYTHONPATH"
done

export LD_LIBRARY_PATH="${HOME}"/opt/lib:"${LD_LIBRARY_PATH}"

[[ -d "${HOME}"/personal_scripts ]] && export PATH="${HOME}"/personal_scripts:"${PATH}"
[[ -d "${HOME}"/opt/bin ]] && export PATH="${HOME}"/opt/bin:"${PATH}"
[[ -d "${HOME}"/.local/bin ]] && export PATH="${HOME}"/.local/bin:"${PATH}"
[[ -d "${HOME}"/repositories/rmsd/rmsd ]] && export PATH="${HOME}"/repositories/rmsd/rmsd:"${PATH}"
[[ -d "${HOME}"/opt/bin/scripts ]] && export PATH="${HOME}"/opt/bin/scripts:"${PATH}"
[[ -d "${HOME}"/.node_modules/bin ]] && export PATH="${HOME}"/.node_modules/bin:"${PATH}"

export SCRATCH=/tmp
export scratch="${SCRATCH}"

# MROOT="${HOME}/Dropbox/MATLAB"
# export MATLABPATH="${MROOT}:${MROOT}/easyspin-4.5.5/easyspin:${MATLABPATH}"
# export MATLAB_USE_USERWORK=1

# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

export QCPROGS="${HOME}"/opt/apps
export apps="${QCPROGS}"
