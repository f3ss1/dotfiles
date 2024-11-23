#!/bin/bash

# Setup Git credentials
read -p "Enter your Git name and surname: " GIT_NAME_SURNAME
read -p "Enter your Git email: " GIT_EMAIL

echo "export GIT_NAME_SURNAME=\"$GIT_NAME_SURNAME\"" >> private_env_variables.zsh
echo "export GIT_EMAIL=\"$GIT_EMAIL\"" >> private_env_variables.zsh

# Get latest Vim plug version
curl -fLo $PWD/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Make symlinks for files.
echo $PWD
[ -e ~/.vim ] && echo "~/.vim exists! Skipping symlink creation." || ln -s "$PWD/.vim" ~/.vim
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
ln -s "$PWD/.githelpers" ~/.githelpers
