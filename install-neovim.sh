#! /bin/sh

echo "creating backup of ~/.config/nvim/init.vim as init.vim.backup"
cp ~/.config/nvim/init.vim ~/.config/nvim/init.vim.backup

echo "copying init.vim to ~/.config/nvim/init.vim"
cp neovim/init.vim ~/.config/nvim/init.vim

echo "done!"
