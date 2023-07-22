#!/bin/bash

wget https://github.com/dracula/gtk/archive/master.zip -O dracula.zip
unzip darcula.zip
if [[ ! -d "${HOME}/.themes/dracula" ]] 
then
  mkdir -p "${HOME}"/.themes/Dracula
fi

cp -r gtk-master/. "${HOME}"/.themes/Dracula/
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
rm -rf gtk-master
rm darcula.zip
wget https://github.com/dracula/gtk/files/5214870/Dracula.zip -O darcula.zip
unzip darcula.zip

cp -r Dracula/. "${HOME}"/.themes/Dracula-ico/
gsettings set org.gnome.desktop.interface icon-theme "Dracula"



