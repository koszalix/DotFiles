#!/bin/bash

if [[ -e ~/.xsessionrc ]]
then
	cp ~/.xsessionrc ~/.xsessionrc.old
fi

cp files/xsessionrc ~/.xsessionrc
