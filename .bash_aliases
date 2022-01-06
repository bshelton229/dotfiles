function gitbr() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Change directory to codespace home
alias csh="cd ${CODESPACE_VSCODE_FOLDER}"
