#!/bin/bash
if [[ ! -e ~/.config/ranger/plugins ]]
then
    mkdir -p ~/.config/ranger/plugins 
fi

cd ~/.config/ranger/plugins || exit
git clone https://github.com/maximtrp/ranger-archives.git

if [[ -e ~/.config/ranger/plugins/rc.conf ]]
then
    mv ~/.config/ranger/plugins/rc.conf ~/.config/ranger/plugins/rc.conf.old
fi

cp files/ranger ~/.config/ranger/plugins/rc.conf

