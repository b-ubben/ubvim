#! /bin/sh

echo "backing up existing .vimrc as .vimrc.backup"
cp ~/.vimrc ~/.vimrc.backup
echo "copying .vimrc to ~/.vimrc"
cp vim/.vimrc ~/.vimrc
echo "done!"
