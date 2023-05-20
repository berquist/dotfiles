# -*- mode: shell-script -*-

# kautoload -U colors && colors

# function virtualenv_prompt_info() {
#     if [[ -n "${VIRTUAL_ENV}" ]]; then
#         name=$(basename "${VIRTUAL_ENV}")
#         pythonver=$($(command -v python) -c 'import sys; print(sys.version)' | head -n 1 | cut -f 1 -d ' ')
#         print " %{$fg_bold[white]%}\(venv: %{$fg[green]%}$name%{$fg_bold[white]%} ${pythonver}\)%{$reset_color%}"
#     fi
# }

# function conda_prompt_info() {
#     if [[ -n "${CONDA_PREFIX}" ]]; then
#         name="${CONDA_DEFAULT_ENV}"
#         pythonver=$($(command -v python) -c 'import sys; print(sys.version)' | head -n 1 | cut -f 1 -d ' ')
#         print " %{$fg_bold[white]%}\(conda: %{$fg[green]%}$name%{$fg_bold[white]%} ${pythonver}\)%{$reset_color%}"
#     fi
# }

# PS1='%{$fg[yellow]%}%d%{$reset_color%}$(virtualenv_prompt_info)$(conda_prompt_info)
# [%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}$(hostname -s)%{$reset_color%}]%(!.#.$) '

PS1="%F{yellow}%d%f
[%F{blue}%n%f@%F{cyan}%m%f]%(!.#.$) "
