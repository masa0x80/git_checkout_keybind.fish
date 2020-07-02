function __register_git_checkout_keybind --on-event fish_prompt
    not set -q SELECT_BRANCH_KEYBIND
    and set -l SELECT_BRANCH_KEYBIND '\cg\cb'
    not set -q SELECT_BRANCH_ALL_KEYBIND
    and set -l SELECT_BRANCH_ALL_KEYBIND '\cg\cg\cb'
    eval bind $SELECT_BRANCH_KEYBIND __git_switch_local_branch
    eval bind $SELECT_BRANCH_ALL_KEYBIND __git_switch_remote_branch
    functions -e __register_git_checkout_keybind
end
