export CLICOLOR=true
zstyle ':completion:*' list-colors ''
autoload -U colors; colors

LESSPIPE=`which src-hilite-lesspipe.sh`
export LESSOPEN="| ${LESSPIPE} %s"
export LESS='-R'
