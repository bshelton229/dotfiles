function gitbr() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

funcion link_git_hooks() {
    for hook in ${SCRIPT_DIR}/git-hooks/*; do
        basename=$(basename $hook)
        if [[ -d $CODESPACE_VSCODE_FOLDER/.git ]]; then
            ln -s $hook $CODESPACE_VSCODE_FOLDER/.git/hooks/$basename
        fi
    done
}
