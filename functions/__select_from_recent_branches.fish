function __select_from_recent_branches
    type fzf >/dev/null || return 1

    commandline | read -l buffer
    git for-each-ref --format='%(refname)' --sort=-committerdate refs/heads | \
        sed -e 's|^refs/heads/||' | \
        fzf | read -l selected_branch
    if test -n "$selected_branch"
        if test -n "$buffer"
            commandline -i $selected_branch
        else
            commandline "git switch $selected_branch"
            commandline -f execute
        end
    end
    commandline -f repaint
end
