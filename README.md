# Dotfiles

A repository to host my dotfiles

## Installation

To deploy any of the dotfiles use:

```
stow -t ~/ folder-to-deploy
```

Assuming that dotfiles' parent is not ~/

Important note: If the folder is not present in the destination folder, then
folder gets symlinked instead of the contents.
This is useful for sway, i3, etc., but not fish.

## Vim specific

User information is not present in the gitconfig.
Create ~/.config/git/config and add name and email information.

```
[user]
	name = Filippos Lanaras
	email = my@email.com
```

## Tilix

For `tilix` don't use stow, use dconf instead.

- `dconf dump /com/gexperts/Terminix/ > terminix.dconf`
- `dconf load /com/gexperts/Terminix/ < terminix.dconf`
