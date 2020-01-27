#!/usr/bin/bash
# dein.vimをinstallします
install_dein_vim() {
  INSTALL_SCRIPT_PATH=`pwd`/plugin_manager/dein/dein_installer.sh

  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > $INSTALL_SCRIPT_PATH
  sh $INSTALL_SCRIPT_PATH  `pwd`/plugin_manager/dein/.cache
  rm $INSTALL_SCRIPT_PATH
}


cd `dirname $0`
install_dein_vim

