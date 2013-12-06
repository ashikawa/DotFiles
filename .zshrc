export LANG=ja_JP.UTF-8

PS1="${USER}@${HOST%%.*} %1~ %(!.#.$) "

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
PS1="${USER}@${HOST%%.*} %1~ %(!.#.$) "

setopt auto_cd
setopt auto_pushd
setopt correct
setopt magic_equal_subst

autoload -U compinit; compinit

setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types

setopt extended_glob
unsetopt caseglob

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt bang_hist
setopt hist_ignore_dups
setopt share_history
setopt hist_reduce_blanks

export CLICOLOR=true
zstyle ':completion:*' list-colors ''
autoload -U colors; colors

alias bc='bc -l'
alias cp='cp -i'
alias ll='ls -lh'
alias ls='ls -GF'
alias mv='mv -i'
alias rm='rm -i'

alias composer="php /usr/bin/composer.phar"
alias globalip="curl ifconfig.me"
alias jslint="jslint --color"
alias lessc="lessc -yui-compress"
alias phpfix="php-cs-fixer fix"
alias phpunit="phpunit --colors"
alias zf="/Library/PHP/Zend/bin/zf.sh"

whoiscon() { whois $@ | iconv -f ISO-2022-JP -t UTF-8 }

alias -s js=node
alias -s less=lessc
alias -s php=php
alias -s pl=perl
alias -s py=python
alias -s rb=ruby

function cd() {
  builtin cd $@ && ls;
}

hosts=( ${(@)${${(M)${(s:# :)${(zj:# :)${(Lf)"$([[ -f ~/.ssh/config ]] && < ~/.ssh/config)"}%%\#*}}##host(|name) *}#host(|name) }/\*} )
zstyle ':completion:*:hosts' hosts $hosts

function ssh-config {
  sed -n "/Host .*$1.*/,/^$/p" ~/.ssh/config
}

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)" 
