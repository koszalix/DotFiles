#!/bin/bash

if [[ -e ~/.tmux.conf ]] 
then
	mv ~/.tmux.conf ~/.tmux.old
fi

cp files/tmux.conf ~/.tmux.conf

