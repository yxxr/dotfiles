#!/bin/bash
install_vimrc() {
   if [ -e ~/.vim ]; then
	   if [ -L ~/.vim ]; then 
		   unlink ~/.vim
           else 
		   echo "error! .vim is already exists."
		   return 
	   fi
   fi
   sh vim/install.sh
   ln -s  `pwd`/vim ~/.vim
}
install_tmux_conf() {
  ln -s `pwd`/tmux/tmux.conf ~/.tmux.conf
}
#### main #####
cd `dirname $0`
install_vimrc
