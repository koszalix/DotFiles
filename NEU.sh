#!/bin/bash
git clone https://github.com/koszalix/NEU.git

cd NEU || exit
chmod +x InstallAllLinux.sh
./InstallAllLinux.sh
cd ../
rm -rf NEU
