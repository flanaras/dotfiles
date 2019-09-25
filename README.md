# Dotfiles

A repository to host my dotfiles

## Installation

To deploy any of the dotfiles use:

```
stow -t ~/ folder-to-deploy
```

Assuming that dotfiles' parent is not ~/

## Vim specific

User information is not present in the gitconfig.
Create ~/.config/git/config and add name and email information.

```
[user]
	name = Philip Lanaras
	email = my@email.com
```
