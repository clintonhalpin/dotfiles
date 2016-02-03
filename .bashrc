# Add ~/bin to the PATH
export PATH=~/bin:$PATH

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

alias ll="ls -al"
alias sdev="ssh enter.some.frequently.used.server -l username"
alias xcode="open *.xcodeproj"
alias dtools = "cd ~/Library/Android/sdk/"
