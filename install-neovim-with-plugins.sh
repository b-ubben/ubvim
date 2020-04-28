#! /bin/sh

# Install vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create backup and then move init.vim into place
cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup
cp neovim/init.vim ~/.config/nvim/init.vim

# Install plugins
nvim -c ":PlugInstall"
