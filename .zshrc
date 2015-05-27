export LANG=ja_JP.UTF-8

for conf in $HOME/.zsh/rc/*; do
  source ${conf};
done

PS1="${USER}@${HOST%%.*} %1~ %(!.#.$) "

autoload -Uz zmv
alias zmv='noglob zmv -W'

function chpwd() { ls }
