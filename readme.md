# Dotfiles

This is a repo with my dotfiles.

## Notes

The setup makes use of two files, `.private_env_variables.zsh` and `.extra.zsh`. Both should be located at home dir
so that the `.zshrc` could make use of them. These are not tracked and not present in this repo since they are personal
by default and thus are not provided.

Since once file is being tracked by git, it ignores the `.gitignore`, I use:

```sh
git update-index --skip-worktree <filename>
```

to add it to ignoring. You might want to do that for `.gitconfig` file to avoid leaking email.

## How to install

**From the repo cloned**, run:

```sh
./startup.sh
```

This will cause the omz plugins to be cloned and git name/surname and email be set up as well.

After that, use `stow tmux vim zsh git` to create symlinks to the actual dotfiles.

### Vim setup

Once you enter Vim, you'll be notified that OneDark theme is not installed. That is normal. To apply vim settings, execute while in vim:

```sh
:PlugInstall
:so ~/.vimrc
```
