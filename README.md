# .dotfiles

#### My personal installation
``` shell
cd ~

# Symlink to code folder
ln -s "/Users/mroust/Library/Mobile Documents/com~apple~CloudDocs/code" code

# Symlink each .dotfiles
ln -s ~/code/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/code/.dotfiles/.zshrc ~/.zshrc
ln -s ~/code/.dotfiles/.p10k.zsh ~/.p10k.zsh

ln -s ~/code/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/code/.dotfiles/.gitignore_global ~/.gitignore_global


# ln -s $"DOTFILES"
```

#### Homebrew stuff
``` shell
# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/code/.dotfiles/Brewfile

# Dump homebrew files
brew bundle dump --describe --file ~/code/.dotfiles/Brewfile -f
```