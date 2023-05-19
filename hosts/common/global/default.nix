{
  programs = {
    bash = {
      promptInit = ''
        # Provide a nice prompt if the terminal supports it.
        if [ "$TERM" != "dumb" ] || [ -n "$INSIDE_EMACS" ]; then
            PROMPT_COLOR="1;31m"
            ((UID)) && PROMPT_COLOR="1;32m"
            if [ -n "$INSIDE_EMACS" ] || [ "$TERM" = "eterm" ] || [ "$TERM" = "eterm-color" ]; then
                # Emacs term mode doesn't support xterm title escape sequence (\e]0;)
                PS1="\[\033[$PROMPT_COLOR\]\w\n[\u@\h]\\$\[\033[0m\] "
            else
                PS1="\[\033[$PROMPT_COLOR\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\\$\[\033[0m\] "
            fi
            if test "$TERM" = "xterm"; then
                PS1="\[\033]2;\h:\u:\w\007\]$PS1"
            fi
        fi
      '';
    };
    zsh = {
      promptInit = ''
        # Note that to manually override this in ~/.zshrc you should run `prompt off`
        # before setting your PS1 and etc. Otherwise this will likely to interact with
        # your ~/.zshrc configuration in unexpected ways as the default prompt sets
        # a lot of different prompt variables.
        # autoload -U promptinit && promptinit && prompt suse && setopt prompt_sp
        PS1="%F{yellow}%d%f\n[%F{blue}%n%f@%F{cyan}%m%f]%(!.#.$) "
      '';
    };
  };
}
