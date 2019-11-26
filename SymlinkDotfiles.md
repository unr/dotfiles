# Symlink dotfiles

We want to make sure we commit/sync all changes with the git repo. So all the dotfiles we need to use should be symlinked to the correct places. 

```bash
# zsh configs
ln -s ~/dotfiles/config/zsh/.zshrc ~/.zshrc
```


#### Symlink How To

```
ln -s /path/to/original /path/to/link
```
