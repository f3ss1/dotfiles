## ENVIRONMENTAL VARIABLES ##
[[ -f "$HOME/.config/zsh/env_variables.zsh" ]] && source "$HOME/.config/zsh/env_variables.zsh"
[[ -f "$HOME/.private_env_variables.zsh" ]] && source "$HOME/.private_env_variables.zsh"

# Add root-installed packages to PATH.
export PATH="$HOME/.local/bin:$PATH"

## EXTRA GIT SETTINGS ##
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME_SURNAME"

## OMZ ##
[[ -f "$HOME/.config/zsh/omz.zsh" ]] && source "$HOME/.config/zsh/omz.zsh"

# Allows tmux to work correctly
export TERM=xterm-256color

## ALIASES ##
# Store your own aliases in the ~/.aliases file and load the here.
# SRC: https://github.com/lewagon/dotfiles/blob/master/zshrc#L61
[[ -f "$HOME/.config/zsh/aliases.zsh" ]] && source "$HOME/.config/zsh/aliases.zsh"

## EXTRA SETUP IN CASE YOU NEED FREEDOM ##
[[ -f "$HOME/.extra.zsh" ]] && source "$HOME/.extra.zsh"
