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
