#!/bin/bash

CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Install vim and vim-plug
apt install vim-gtk3
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install .vimrc file
cp $CURR_DIR/vim_config $HOME/.vimrc

# Run vim-plug to install all necessary plugins
vim +'PlugInstall --sync' +qall
