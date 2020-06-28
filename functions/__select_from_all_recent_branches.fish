function __select_from_all_recent_branches
    type fzf >/dev/null || return 1

    commandline | read -l buffer
    git for-each-ref --format='%(refname)' --sort=-committerdate | \
        fzf | read -l selected_branch
    if test -n "$selected_branch"
        if test -n "$buffer"
            commandline -i (echo $selected_branch | sed -e 's|^refs\/heads\/||' -e 's|^refs\/remotes\/origin\/||')
        else
            commandline "git switch -t $selected_branch"
            commandline -f execute
        end
    end
    commandline -f repaint
end
