#!/bin/bash

CWD=$(pwd)

# Parse arguments
if [ "$1" == "install" ]; then
  echo "Installing tmux conf"
  if [[ -e "${HOME}/.tmux.conf" ]] 
  then
	  mv "${HOME}/.tmux.conf" "${HOME}/.tmux.conf.old"
  fi
  cp "${CWD}/configs/.tmux.conf" "${HOME}/.tmux.conf"
  

elif [ "$1" == "get" ]; then
  echo "Getting zsh configuration"
  cp "${HOME}/.tmux.conf" "${CWD}/configs/.tmux.conf" 
  

elif [ "$1" == "help" ]; then
  echo "TMUX Config file utility"
  echo " install - install configuration file from this repository"
  echo " get     - get current tmux configuration to this repository"

else
  echo "Invalid argument. Use help for help"
fi

