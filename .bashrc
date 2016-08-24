#!/usr/bin/env bash

# Add styling to shell for easier readability
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$(parse_git_branch)$"

# Aliases for efficiency and functionality
alias hgrep="history | grep"
alias psgrep="ps aux | grep "
alias gcb="gradle clean build"
alias gct="gradle clean test"
alias cb="git checkout -b"
