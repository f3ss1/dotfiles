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
[ -e ~/.vim ] && echo "~/.vim exists! Skipping symlink creation.
 Please make it manually after backing up existing content to avoid losing configuration."
|| ln -s "$PWD/.vim" ~/.vim

[ -e ~/.vimrc ] && echo "~/.vimrc exists! Skipping symlink creation.
 Please make it manually after backing up existing content to avoid losing configuration."
|| ln -s "$PWD/.vimrc" ~/.vimrc

[ -e ~/.gitconfig ] && echo "~/.gitconfig exists! Skipping symlink creation.
 Please make it manually after backing up existing content to avoid losing configuration."
|| ln -s "$PWD/.gitconfig" ~/.gitconfig

[ -e ~/.githelpers ] && echo "~/.githelpers exists! Skipping symlink creation.
 Please make it manually after backing up existing content to avoid losing configuration."
|| ln -s "$PWD/.githelpers" ~/.githelpers

[ -e ~/.env_variables ] && echo "~/.env_variables exists! Skipping symlink creation.
 Please make it manually after backing up existing content to avoid losing configuration."
|| ln -s "$PWD/.env_variables" ~/.env_variables

[ -e ~/.private_env_variables ] && echo "~/.private_env_variables exists! Skipping symlink creation.
 Please make it manually after backing up existing content to avoid losing configuration."
|| ln -s "$PWD/.private_env_variables" ~/.private_env_variables
