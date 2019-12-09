#!/bin/bash
install_vimrc() {
   cp template/vimrc ~/.vimrc
   ln -s  `pwd`/vim ~/.vim
}
install_dein_vim() {
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > dein_installer.sh
  sh ./dein_installer.sh ~/.cache/dein
}
#### main #####
cd `dirname $0`
install_vimrc
install_dein_vim
