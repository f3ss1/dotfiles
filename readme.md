# Dotfiles

This is a repo with my dotfiles.

## How to install

**From the repo cloned**, run:

```sh
curl -fLo $PWD/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s "$PWD/.vim" ~/.vim
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
ln -s "$PWD/.githelpers" ~/.githelpers
```
Once you enter Vim, you'll be said that OneDark theme is not installed. That is normal. To apply vim settings, execute while in vim:

```sh
:PlugInstall
:so ~/.vimrc
```

Since `.zshrc` is a single point of error, I would suggest moving it manually and adapt the contents based on the system it runs on.

### Installing `pyenv`

This setup encourages usage of `pyenv` to manage base `python` versions while using `poetry` for specific environments. To install `pyenv`, follow the installation guide on their [GitHub](https://github.com/pyenv/pyenv). **Note** that step with adding lines to your `.zshrc` is not required since this part is already incorporated into the `pyenv_setup.zsh` separate file.

To install the `python` version you need, do not forget to meet the prerequirements [they list](https://github.com/pyenv/pyenv?tab=readme-ov-file#d-install-python-build-dependencies) first.  

