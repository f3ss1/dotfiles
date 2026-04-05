#!/bin/bash

# Setup Git credentials
read -p "Enter your Git name and surname: " GIT_NAME_SURNAME
read -p "Enter your Git email: " GIT_EMAIL

echo "export GIT_NAME_SURNAME=\"$GIT_NAME_SURNAME\"" >> $HOME/.private_env_variables.zsh
echo "export GIT_EMAIL=\"$GIT_EMAIL\"" >> $HOME/.private_env_variables.zsh

# Get latest Vim plug version.
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install OMZ
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Download non-shipped omz plugins.
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
