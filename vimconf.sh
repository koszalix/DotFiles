#!/bin/bash

if [[ -e ~/.vimrc ]] 
then
	cp ~/.vimrc ~/.vimrc.old
fi

mkdir -p  ~/.vim/plugins >> /dev/null

if [[ -e ~/.vim_spellfile ]] 
then
	cp ~/.vim/vim_spellfile ~/.vim/vim_spellfile.old
fi

cp files/vimrc ~/.vimrc
cp files/vim_spellfile ~/.vim/vim_spellfile
cp files/vim_spellfile ~/.vim/vim_spellfile.utf8


git clone https://github.com/jiangmiao/auto-pairs.git
cp auto-pairs/plugin/auto-pairs.vim ~/.vim/plugins/auto-pairs.vim
rm -rf auto-pairs

