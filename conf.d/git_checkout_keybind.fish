function __register_git_checkout_keybind
    not set -q SELECT_BRANCH_KEYBIND
    and set -l SELECT_BRANCH_KEYBIND '\cg\cb'
    not set -q SELECT_BRANCH_ALL_KEYBIND
    and set -l SELECT_BRANCH_ALL_KEYBIND '\cg\cg\cb'
    eval bind $SELECT_BRANCH_KEYBIND __select_from_recent_branches
    eval bind $SELECT_BRANCH_ALL_KEYBIND __select_from_all_recent_branches
    functions -e __register_git_checkout_keybind
end
__register_git_checkout_keybind
