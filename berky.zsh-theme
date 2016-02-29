### My personal zsh "theme"

function virtualenv_prompt_info() {
    if [[ -n $VIRTUAL_ENV ]]; then
        name=$(basename $VIRTUAL_ENV)
        pythonver=$($(which python) -c 'import sys; print(sys.version)' | head -n 1 | cut -f 1 -d ' ')
        print " %{$fg_bold[white]%}\(env: %{$fg[green]%}$name%{$fg_bold[white]%} $pythonver\)%{$reset_color%}"
    fi
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

PROMPT='%{$fg[cyan]%}%d%{$reset_color%}$(git_prompt_info)$(virtualenv_prompt_info)
[%{$fg[blue]%}%n%{$reset_color%}@%{$fg[cyan]%}$(hname)%{$reset_color%}]%(!.#.$) '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_STAGED=""
ZSH_THEME_GIT_PROMPT_UNSTAGED=""
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_AHEAD=""
ZSH_THEME_GIT_PROMPT_BEHIND=""
