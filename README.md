# .dotfiles

``` bash
cd ~

# Symlink to code folder
ln -s "/Users/mroust/Library/Mobile Documents/com~apple~CloudDocs/code" code

# Symlink each .dotfiles
DOTFILES="code/.dotfiles/"

ln -s $"DOTFILES".bash_profile .bash_profile
ln -s $"DOTFILES".zshrc .zshrc
ln -s $"DOTFILES".p10k.zsh .p10k.zsh

ln -s $"DOTFILES".git_config .git_config
ln -s $"DOTFILES".gitignore_global .gitignore_global

```


