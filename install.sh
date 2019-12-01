#!/bin/bash
install_vimrc() {
   cp template/vimrc ~/.vimrc
   ln -s  `pwd`/vim ~/.vim
}

#### main #####
cd `dirname $0`
install_vimrc
