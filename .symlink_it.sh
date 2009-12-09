#!/bin/bash

function relink() {
#  rm -i $1
  rm -f $1
  ln -sn $2 $1
}

cd ..

relink .inputrc      ~/etc/inputrc
relink .bash         ~/etc/bash
relink .bashrc       ~/etc/bashrc
relink .bash_profile ~/etc/bash_profile
relink .bash_logout  ~/etc/bash_logout

relink .vim          ~/etc/vim
relink .vimrc        ~/etc/vimrc

relink .irbrc        ~/etc/irbrc
relink .rdebugrc     ~/etc/rdebugrc

relink .screenrc     ~/etc/screenrc

relink .ssh/config   ~/etc/ssh/config

relink .gitconfig    ~/etc/gitconfig

relink .rtorrent.rc  ~/etc/rtorrent.rc

