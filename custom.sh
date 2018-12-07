#!/bin/bash
# script de customizacao (wave linux)
# 06/12/2018
# authores (ondatec, celo)
VERSION=0.0.2
GRUBIMG="/usr/share/images/desktop-base/desktop-grub.png"
if [[ $UID != 0 ]]
then
    echo "Just root user can run this script"
    exit 0;
fi
#verifica conecção
online(){
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  echo "link ok"
else
  echo "Você precisa estar conectado na internet pra rodar esse script;"
  exit 0;
fi
}
online
#lista de programas
PRG=(gimp inkscape geany firefox-esr vim)
install(){
    for i in ${*}
    do
        apt-get install ${i[@]}
    done
}
img() {
    #funciona apenas no debian 9
    wget https://raw.githubusercontent.com/ondatec/customize/master/wll/odwallyellow.png -O ${GRUBIMG}
}

custom(){
    install ${PRG[@]}
    img
}
custom
