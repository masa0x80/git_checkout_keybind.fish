# git_checkout_keybind.fish

[![MIT LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)

## Overview

This is a `git-checkout` keybinding plugin for fish-shell.

## Installation

With [fresco]
```
fresco masa0x80/git_checkout_keybind.fish
```

With [fisherman]
```
fisher masa0x80/git_checkout_keybind.fish
```

## Dependencies

- [fzf], [peco] or [percol]

## Usage

### Switch to the selected branch

#### from local branches
To switch to the branch selected from local, type ctrl-g ctrl-b (`\cg\cb`).

#### from all branches
To switch to the branch selected from all, type ctrl-g ctrl-g ctrl-b (`\cg\cg\cb`).

### Input the selected branch name

#### from local branches
To input the branch selected from local, type ctrl-g ctrl-b (`\cg\cb`) after inputing any command (e.g. `git merge`).

#### from all branches
To input the branch selected from all, type ctrl-g ctrl-g ctrl-b (`\cg\cg\cb`) after inputing any command.

## Setup

### `SELECT_BRANCH_KEYBIND`

`SELECT_BRANCH_KEYBIND` is the key binding to switch to or start the input completion for the selected branch.
It is defaulted to `\cg\cb` (ctrl-g ctrl-b).

### `SELECT_BRANCH_ALL_KEYBIND`

`SELECT_BRANCH_ALL_KEYBIND` is the key binding to switch to or start the input completion for the selected branch.
It is defaulted to `\cg\cg\cb` (ctrl-g ctrl-g ctrl-b).

## Bibliography

- [pecoで最近更新されたブランチにcheckoutする](http://blog.shibayu36.org/entry/2014/07/26/151106)

[fzf]: https://github.com/junegunn/fzf
[peco]: https://github.com/peco/peco
[percol]: https://github.com/mooz/percol
[fresco]: https://github.com/masa0x80/fresco
[fisherman]: https://github.com/fisherman/fisherman
