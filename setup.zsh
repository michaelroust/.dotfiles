
# cd Into Synchronized code folder
cd "~/Library/Mobile Documents/com~apple~CloudDocs/code"

# Symlink to code folder
ln -s . ~/code

cd ".dotfiles"

# Symlink each .dotfiles
ln -s .bash_profile ~/.bash_profile
ln -s .zshrc ~/.zshrc
ln -s .p10k.zsh ~/.p10k.zsh

ln -s .git_config ~/.git_config
ln -s .gitignore_global ~/.gitignore_global
