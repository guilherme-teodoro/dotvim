#!/bin/bash
echo 'Moving files...'
mkdir -p ~/.vim; mv * $_
mv .gitignore ~/.vim; mv .git ~/.vim

echo 'Creating symbolic link...'
ln -s ~/.vim/vimrc ~/.vimrc

echo 'Installing Vundle plugin...'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo 'Installing all plugins...'
vim +PluginInstall +qall
