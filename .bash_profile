if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

#source /usr/local/etc/bash_completion.d/git-completion.bash
#source /usr/local/etc/bash_completion.d/git-prompt.sh

export EDITOR="code"
export GPG_TTY=$(tty)

export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[94m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

shopt -s histappend
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=ignoreboth
export PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi
if [ -e /Users/ctroup/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/ctroup/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/opt/google-cloud-sdk/path.bash.inc' ]; then . '/usr/local/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/usr/local/opt/google-cloud-sdk/completion.bash.inc'; fi
