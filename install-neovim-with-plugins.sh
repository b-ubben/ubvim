#! /bin/sh

echo "installing vim-plug"
# Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "creating backup of existing init.vim as ~/.config/nvim/init.vim.backup"
# Create backup and then move init.vim into place
cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup
cp neovim/init.vim ~/.config/nvim/init.vim

echo "launching neovim and installing plugins..."
sleep 3
# Install plugins
nvim -c ":PlugInstall"
