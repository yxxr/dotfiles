#!/bin/bash
if [  -L ~/.vim ]; then
    echo ".vim is symbolic link"
    read -p "Can you delete it? (.vimrc will not be deleted) [y/N]" inputs
    case "$inputs" in 
            [yY]*) ;; 
                *) echo "abort." ; exit ;;
    esac
    rm ~/.vim
    echo "Delete synblic link .vim."
fi
