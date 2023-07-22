#!/bin/bash

if [[ -e ~/.gitconfig ]]
then
	mv ~/.gitconfig ~/.gitconfig.old
fi
cp files/gitconfig ~/.gitconfig
