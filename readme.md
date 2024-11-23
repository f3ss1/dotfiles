# Dotfiles

This is a repo with my dotfiles.

## Notes

There is not `.gitignore` file in this repo since it appears that once file is being tracked by git, it ignores the `.gitgnore`. For this reason, I use:

```sh
git update-index --skip-worktree <filename>
```

to disable tracking and 

```sh
git update-index --no-skip-worktree <filename>
```

to enable it again as I need. In general, there are two files you don't want to be tracked: `private_env_variables.zsh` for obvious reasons and `.gitconfig` since it contains your name and email address. The latter is not necessary this information is exposed anyway, but to avoid people setting my credentials by mistake when cloning the repo, I do this as well.

## How to install

**From the repo cloned**, run:

```sh
./startup.sh
```

Since `.zshrc` is a single point of error, I would suggest moving it manually and adapt the contents based on the system it runs on. After you've done that, **do not forget to source** with `source ~/.zshrc. 

### Vim setup

Once you enter Vim, you'll be notified that OneDark theme is not installed. That is normal. To apply vim settings, execute while in vim:

```sh
:PlugInstall
:so ~/.vimrc
```

### Installing `pyenv`

This setup encourages usage of `pyenv` to manage base `python` versions while using `poetry` for specific environments. To install `pyenv`, follow the installation guide on their [GitHub](https://github.com/pyenv/pyenv). **Note** that step with adding lines to your `.zshrc` is not required since this part is already incorporated into the `pyenv_setup.zsh` separate file.

To install the `python` version you need, do not forget to meet the prerequirements [they list](https://github.com/pyenv/pyenv?tab=readme-ov-file#d-install-python-build-dependencies) first.  

