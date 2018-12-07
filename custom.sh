#!/bin/bash
# script de customizacao (wave linux)
# 06/12/2018
# authores (ondatec, celo)
VERSION=0.0.2
GRUBIMG="/usr/share/images/desktop-base/desktop-grub.png"
if [[ $UID != 0 ]]
then
    echo "Rode como root."
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
theme(){
    #wget h..
    #gsettins
    GSET="gsettings set org.gnome"
    gsettings set org.gnome.desktop.interface gtk-theme "Lavander"
    gsettings set org.gnome.desktop.wm.preferences theme "Lavander"
    gsettings set org.gnome.shell.extensions.user-theme name "Lavander"
    gsettings set org.gnome.desktop.interface gtk-color-scheme "bg_color:#e9efe9;fg_color:#444444;base_color:#ffffff;text_color:#333333;selected_bg_color:#6666cc;selected_fg_color:#eeeeee;tooltip_bg_color:#222222;tooltip_fg_color:#dfcfcf;link_color:#cc0099;"
    ${GSET}.desktop.interface gtk-theme "Lavander"
    ${GSET}.desktop.wm.preferences theme "Lavander"
    ${GSET}.desktop.interface gtk-color-scheme "..."
    ${GSET}.desktop.interface icon-theme "Canta"
    ${GSET}.shell.extensions.user-theme name "theme"

}
custom(){
    install ${PRG[@]}
    img
}
custom
