#!/bin/bash
SCRIPT_PATH="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"
pkgs=('fishui-git' 'libyoyo-git' 'core-git' 'filemanager-git' 'desktop-git' 'kwin-plugins-git' 'qt-plugins-git' 'screenlocker-git' 'screenshot-git' 'wallpapers-git' 'terminal-git' 'calculator-git' 'cursor-themes-git' 'gtk-themes-git' 'icons-git' 'launcher-git' 'ocr-git' 'videoplayer-git' 'settings-git' 'dock-git')

for i in "${pkgs[@]}"
do
	echo "\nInstall $i\n"
    cd $SCRIPT_PATH/$pkgs[i]
    makepkg -si
    cd ..
done