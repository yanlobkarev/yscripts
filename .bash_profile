# git
alias gs='git status'
alias gb='git branch'
alias gl='git log --graph --date=short --pretty=format:"%ad %Cblue%H%Creset %s4"'
alias gf='git diff --stat'
if [ -f /opt/local/etc/bashcompletion ]; then
. /opt/local/etc/bashcompletion
fi
alias _gitps1="git branch 2>/dev/null | grep '*' | sed 's/* \(.*\)/(\1)/'"

# aliases-tar
alias untar='tar xvf'
alias untargz='tar xvfz'
alias untarbz='tar yxf'
alias simfldr='open ~/Library/Application\ Support/iPhone\ Simulator'

# look of disapproval
RED="\[\033[00;31m\]"
NORMAL="\[\033[00;39m\]"
CYAN="\[\033[00;36m\]"
GREEN="\[\033[00;32m\]"
PS1="$CYAN\u$RED ಠ_ಠ $CYAN\w$GREEN\$(_gitps1) $RED#$NORMAL "

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

