function gitbr() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

# Trying to put this in install.sh had a race condition where the workspace wasn't yet cloned.
function link_git_hooks() {
    for hook in /workspaces/.codespaces/.persistedshare/dotfiles/git-hooks/*; do
        basename=$(basename $hook)
        if [[ -d $CODESPACE_VSCODE_FOLDER/.git ]]; then
            ln -s $hook $CODESPACE_VSCODE_FOLDER/.git/hooks/$basename
        fi
    done
}
