#!/bin/bash
# update
echo "apt update ..."
apt update
# vim
echo "install vim ..."
apt install vim
cp .vimrc ~/
# vim plugins
echo "install vim plugins ..."
# ctrlp
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp
# vim-airline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/plugins/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/vim-airline/doc" -c q
# fugitive
git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/plugins/start/fugitive
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/fugitive/doc" -c q
# vim-better-whitespace
git clone https://github.com/ntpeters/vim-better-whitespace.git ~/.vim/pack/plugins/start/vim-better-whitespace
# vim-gitgutter
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/pack/plugins/start/vim-gitgutter
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/vim-gitgutter" -c q
# youcompleteme
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/plugins/start/YouCompleteMe
git -C ~/.vim/pack/plugins/start/YouCompleteMe submodule update --init --recursive
~/.vim/pack/plugins/start/YouCompleteMe/install.py
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/YouCompleteMe" -c q
# nerdtree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/nerdtree/doc" -c q
# screen
echo "install screen ..."
apt install screen
silent cp .screenrc ~/
echo "Enjoy your stuff:)"