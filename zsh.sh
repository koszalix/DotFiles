#!/bin/bash

CWD=$(pwd)

# Parse arguments
if [ "$1" == "install" ]; then
  echo "Installing zshrc"
  if [[ -e "${HOME}/.zshrc" ]] 
  then
	  mv "${HOME}/.zshrc" "${HOME}/.zshrc.old"
  fi
  cp "${CWD}/configs/.zshrc" "${HOME}/.zshrc"
  

elif [ "$1" == "get" ]; then
  echo "Getting zsh configuration"
  cp "${HOME}/.zshrc" "${CWD}/configs/.zshrc" 
  

elif [ "$1" == "help" ]; then
  echo "ZSH Config file utility"
  echo " install - install configuration file from this repository"
  echo " get     - get current zsh configuration to this repository"

else
  echo "Invalid argument. Use help for help"
fi

