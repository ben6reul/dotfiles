HISTSIZE=10000
SAVEHIST=10000
fpath=(/etc/zsh-completions/src $fpath)
setopt appendhistory autocd notify noautomenu nomenucomplete
unsetopt beep extendedglob nomatch
export CLICOLOR=1
autoload -Uz compinit
compinit
autoload -U colors && colors
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache
setopt sharehistory
setopt hist_ignore_all_dups inc_append_history
export TERM="xterm-256color"

HISTFILE=~/.zhistory

PS1="[%n@%{$fg_bold[red]%}%m%{$reset_color%}]:%~
 %(!.#.$) "
#aliases
export EDITOR="vim"
export VISUAL="vim"
alias ls='ls --color'
alias dir='dir --color'
alias vdir='vdir --color'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'
alias cp="cp -vi"
alias mv="mv -vi"
alias cd..="cd .."
alias mkdir='mkdir -p'

#user bin
if [ -d "$HOME/bin" ] ; then
   path=($HOME/bin $path)
fi

umask 027
