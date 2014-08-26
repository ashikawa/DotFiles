autoload -U compinit
compinit -u

fpath=(/usr/local/share/zsh-completions $fpath)
fpath=(/usr/local/Cellar/zsh-completions/0.11.0/share/zsh-completions $fpath)

hosts=( ${(@)${${(M)${(s:# :)${(zj:# :)${(Lf)"$([[ -f ~/.ssh/config ]] && < ~/.ssh/config)"}%%\#*}}##host(|name) *}#host(|name) }/\*} )
zstyle ':completion:*:hosts' hosts $hosts
