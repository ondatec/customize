#!/bin/bash
# script de customizacao (wave linux)
# 06/12/2018
# authores (ondatec, celo)
VERSION=0.0.1
GRUBIMG="/usr/share/images/desktop-base/desktop-grub.png"
if [[ $UID != 0 ]]
then
    echo "Just root user can run this script"
    #exit 0;
fi
#lista de programas
PRG=(gimp inkscape geany firefox-esr vim)
install(){
    for i in ${*}
    do
        apt-get install ${i[@]}
    done
}
img() {
    wget https://raw.githubusercontent.com/ondatec/customize/master/wll/odwallyellow.png -O ${GRUBIMG}
}

custom(){
    install ${PRG[@]}
    img
}
custom
