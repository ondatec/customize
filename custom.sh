#!/bin/bash
# script de customizacao (wave linux)
# 06/12/2018
<<<<<<< HEAD
# authores (ondatec, celo)
=======
# authores (ondatec)
>>>>>>> 02f812986645d7936a2d144043860c8945d36e86
VERSION=0.0.1

if [[ $UID != 0 ]]
then
    echo "Just root user can run this script"
    #exit 0;
fi
#lista de programas
PRG=(gimp inkscape geany firefox-esr vim)
<<<<<<< HEAD
install(){
    for i in ${*}
=======
install{
    for i in ${1}
>>>>>>> 02f812986645d7936a2d144043860c8945d36e86
    do
        apt-get install ${i[@]}
    done
}

<<<<<<< HEAD
custom(){
    install ${PRG[@]}
}
custom
=======
custom{
    install ${PRG[@]}

}
>>>>>>> 02f812986645d7936a2d144043860c8945d36e86
