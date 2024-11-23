## ENVIRONMENTAL VARIABLES ##
[[ -f "$HOME/dotfiles/env_variables.zsh" ]] && source "$HOME/dotfiles/env_variables.zsh"
[[ -f "$HOME/dotfiles/private_env_variables.zsh" ]] && source "$HOME/dotfiles/private_env_variables.zsh"

# Add poetry and root-installed packages to PATH.
export PATH="$HOME/.local/bin:$PATH"

## EXTRA GIT SETTINGS ##
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME_SURNAME"

## OMZSH SETTINGS ## 
export ZSH="$HOME/.oh-my-zsh"

# General seettings
ZSH_THEME="eastwood"
COMPLETION_WAITING_DOTS="true"

# Enable plugins
plugins=(git docker zsh-autosuggestions)
source $ZSH_AUTOSUGGESTIONS_PATH 

# Enable omz
source $ZSH/oh-my-zsh.sh

## ALIASES ##
# Store your own aliases in the ~/.aliases file and load the here.
# SRC: https://github.com/lewagon/dotfiles/blob/master/zshrc#L61
[[ -f "$HOME/dotfiles/aliases.zsh" ]] && source "$HOME/dotfiles/aliases.zsh"

## PYENV ##
# [[ -f "$HOME/dotfiles/pyenv_setup.zsh" ]] && source "$HOME/dotfiles/pyenv_setup.zsh"

