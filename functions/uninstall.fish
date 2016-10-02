functions -e __select_from_recent_branches
functions -e __select_from_all_recent_branches
bind | command grep __select_from_recent_branches | command cut -d ' ' -f 2 | read -l SELECT_BRANCH_KEYBIND
bind | command grep __select_from_all_recent_branches | command cut -d ' ' -f 2 | read -l SELECT_BRANCH_ALL_KEYBIND
eval bind -e $SELECT_BRANCH_KEYBIND
eval bind -e $SELECT_BRANCH_ALL_KEYBIND
