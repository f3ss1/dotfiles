# Dotfiles

This is a repo with my dotfiles.

## Notes

There is not `.gitignore` file in this repo since it appears that once file is being tracked by git, it ignores the `.gitignore`. For this reason, I use:

```sh
git update-index --skip-worktree <filename>
```

**NOTE** that this would **APPEND** your git name credentials to `.private_env_variables.zsh`. Make sure that there is no collision in these (otherwise, the last ones specified in the file will be used).

to disable tracking and 

```sh
git update-index --no-skip-worktree <filename>
```

to enable it again as I need. In general, there is only one file you don't want to be tracked: `.private_env_variables.zsh`. 

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

This setup encourages usage of `pyenv` to manage base `python` versions while using `poetry` for specific environments. To install `pyenv`, follow the installation guide on their [GitHub](https://github.com/pyenv/pyenv). **Note** that step with adding lines to your `.zshrc` is not required since this part is already incorporated into the `.pyenv_setup.zsh` separate file.

To install the `python` version you need, do not forget to meet the prerequirements [they list](https://github.com/pyenv/pyenv?tab=readme-ov-file#d-install-python-build-dependencies) first.  

## TODO

- Add script to download `zsh-syntax-highlight`.
