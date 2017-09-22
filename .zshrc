setopt autocd
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/zane/.zshrc'
zstyle ':completion:*' rehash true

autoload -Uz compinit
compinit

PROMPT="%n@%m %~ $ "

alias ga="git add"
alias gb="git branch -rv"
alias gc="git checkout"
alias gd="git diff --find-renames"
alias gl="git log --oneline --decorate=short --graph"
alias gs="git status"
alias gds="git diff --staged"
alias gsh="git show HEAD"
alias tree="tree -a -I node_modules\|.git"
alias ls="ls -A --color=auto --group-directories-first"
alias v="nvim"
alias vim="nvim"
