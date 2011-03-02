#!/bin/bash

function relink() {
#  rm -i $1
  rm -f $1
  ln -sn $2 $1
}

cd ..

relink ~/.inputrc      ~/etc/inputrc
relink ~/.bash         ~/etc/bash
relink ~/.bashrc       ~/etc/bashrc
relink ~/.bash_profile ~/etc/bash_profile
relink ~/.bash_logout  ~/etc/bash_logout
relink ~/.vim          ~/etc/vim
relink ~/.vimrc        ~/etc/vimrc
relink ~/.gvimrc       ~/etc/gvimrc
relink ~/.irbrc        ~/etc/irbrc
relink ~/.rdebugrc     ~/etc/rdebugrc
relink ~/.screenrc     ~/etc/screenrc
relink ~/.gitconfig    ~/etc/gitconfig
relink ~/.gitignore    ~/etc/gitignore
relink ~/.ssh/config   ~/etc/ssh/config
#relink ~/.ssh/authorized_keys   ~/etc/ssh/authorized_keys
#relink ~/.ssh/authorized_keys2   ~/etc/ssh/authorized_keys2
#relink ~/.ssh/known_hosts   ~/etc/ssh/known_hosts
#relink ~/.ssh/proxyauth ~/etc/ssh/proxyauth
relink ~/.ssh/proxy_cmd_for_github ~/etc/ssh/proxy_cmd_for_github
relink ~/.rtorrent.rc  ~/etc/rtorrent.rc
relink ~/.wgetrc       ~/etc/wgetrc
relink ~/.gemrc        ~/etc/gemrc
#relink ~/.emacs        ~/etc/emacs
relink ~/.zile         ~/etc/zile
relink ~/.curlrc       ~/etc/curlrc
relink ~/.pssh         ~/etc/pssh
relink ~/.parallelrc   ~/etc/parallelrc
#relink ~/history   ~/etc/history
#relink ~/.sqlite_history   ~/etc/sqlite_history
relink ~/.emacs.d ~/etc/emacs.d
relink ~/.hoerc       ~/etc/hoerc
relink ~/.irssi       ~/etc/irssi
relink ~/.lftp       ~/etc/lftp
relink ~/.flexlmrc   ~/etc/flexlmrc

UNAME=`uname`

if [[ $UNAME =~ 'Linux' ]]; then
  relink ~/.todo.cfg ~/Dropbox/todo/.conf/linux.todo.cfg
  relink ~/.todo.actions.d ~/Dropbox/todo/.todo.actions.d
elif [[ $UNAME =~ 'CYGWIN' ]]; then
  relink ~/.todo.cfg /cygdrive/c/Anchor/Dropbox/todo/.conf/cygwin.todo.cfg
  relink ~/.todo.actions.d /cygdrive/c/Anchor/Dropbox/todo/.todo.actions.d
elif [[ $UNAME =~ 'MING' ]]; then
  relink ~/.todo.cfg ~/Dropbox/todo/.conf/linux.todo.cfg
  relink ~/.todo.actions.d ~/Dropbox/todo/.todo.actions.d
fi

