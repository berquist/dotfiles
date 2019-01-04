#!/usr/bin/env bash

pythonpathdirs=($(find "${HOME}"/pythonpath -maxdepth 1 -type d))
# https://stackoverflow.com/questions/1335815/how-to-slice-an-array-in-bash
for d in ${pythonpathdirs[@]:1}; do
    export PYTHONPATH="${d}:$PYTHONPATH"
done

export LD_LIBRARY_PATH="${HOME}"/opt/lib:"${LD_LIBRARY_PATH}"

export PIP_CONFIG_FILE="${HOME}"/dotfiles/pip.conf

export PYENV_ROOT="${HOME}"/.pyenv

export PATH="${HOME}"/personal_scripts:"${PATH}"
export PATH="${HOME}"/buildscripts:"${PATH}"
export PATH="${HOME}"/opt/bin:"${PATH}"
export PATH="${HOME}"/.local/bin:"${PATH}"
export PATH="${HOME}"/repositories/rmsd/rmsd:"${PATH}"
export PATH="${HOME}"/opt/bin/scripts:"${PATH}"
export PATH="${HOME}"/.node_modules/bin:"${PATH}"

export SCRATCH=/tmp
export scratch="${SCRATCH}"

# MROOT="${HOME}/Dropbox/MATLAB"
# export MATLABPATH="${MROOT}:${MROOT}/easyspin-4.5.5/easyspin:${MATLABPATH}"
# export MATLAB_USE_USERWORK=1

# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

export npm_config_prefix="${HOME}"/.node_modules

export QCPROGS="${HOME}"/opt/apps
export apps="${QCPROGS}"