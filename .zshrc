export LANG=ja_JP.UTF-8

source ~/.zsh/rc/setopt.zsh
source ~/.zsh/rc/completion.zsh
source ~/.zsh/rc/colors.zsh
source ~/.zsh/rc/alias.zsh
source ~/.zsh/rc/extract.zsh
source ~/.zsh/rc/git.zsh
source ~/.zsh/rc/functions.zsh
source ~/.zsh/rc/dev.zsh

# source ~/.zsh/plugin/xxxx.zsh

PS1="${USER}@${HOST%%.*} %1~ %(!.#.$) "

autoload -Uz zmv
alias zmv='noglob zmv -W'

function chpwd() { ls }
