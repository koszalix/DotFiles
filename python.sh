#!/bin/bash
if [[ -e "${HOME}"/.config/pip/pip.conf ]] 
then
        mv "${HOME}"/.config/pip/pip.conf ~/.config/pip/pip.conf.bak
else
        mkdir -p "${HOME}"/.config/pip
fi

cp files/pip.conf "${HOME}"/.config/pip/


pip3 install -r files/pip_requirements.txt 

