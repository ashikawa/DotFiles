HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt auto_cd
setopt auto_pushd
setopt correct
setopt magic_equal_subst

setopt auto_list
setopt auto_menu
setopt list_packed
setopt list_types

#setopt extended_glob
unsetopt caseglob

setopt bang_hist
setopt hist_ignore_dups
setopt share_history
setopt hist_reduce_blanks