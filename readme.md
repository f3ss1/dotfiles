# Dotfiles

This is a repo with my dotfiles.

## How to install

From the repo cloned, run:

```sh
ln -s "$PWD/.vim" ~/.vim
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
ln -s "$PWD/.githelpers" ~/.githelpers
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Once you enter Vim, you'll be said that OneDark theme is not installed. That is normal. To apply vim settings, execute while in vim:

```sh
:PlugInstall
:so ~/.vimrc
```

Since `.zshrc` is a single point of error, I would suggest moving it manually and adapt the contents based on the system it runs on.

