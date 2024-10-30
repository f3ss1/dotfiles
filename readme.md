# Dotfiles

This is a repo with my dotfiles.

## How to install

From the repo cloned, run:

```sh
ln -s "$PWD/.vim" ~/.vim
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
ln -s "$PWD/.githelpers" ~/.githelpers
```

To apply vim settings, execute while in vim:

```sh
:so ~/.vimrc
```

Since `.zshrc` is a single point of error, I would suggest moving it manually and adapt the contents based on the system it runs on.

