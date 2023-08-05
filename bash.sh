#!/bin/bash

if [[ -e ~/.bash_aliases ]]
then	
	mv ~/.bash_aliases ~/.bash_aliases.bak
        cp files/bash_aliases ~/.bash_aliases
fi

if [[ -e ~/.bashrc ]]
then
        mv ~/.bashrc ~/.bashrc.bak
        cp files/bashrc ~/.bashrc
fi
source "${HOME}"/.bashrc
source "${HOME}"/.bash_aliases
