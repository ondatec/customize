#!/bin/bash
# script de customizacao (wave linux)
# 06/12/2018
# authores (ondatec)
VERSION=0.0.1

if [[ $UID != 0 ]]
then
    echo "Just root user can run this script"
    #exit 0;
fi
#lista de programas
PRG=(gimp inkscape geany firefox-esr vim)
install{
    for i in ${1}
    do
        apt-get install ${i[@]}
    done
}

custom{
    install ${PRG[@]}

}
