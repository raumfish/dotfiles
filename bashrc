############################################################
# SOURCE IF EXISTS
############################################################

function cond_source () {
  [ -f $1 ] && . $1
}

############################################################
# FUNCTIONS
############################################################
glu() { (local IFS="$1"; shift && echo "$*") }
repath() { ( _E=`echo "${PATH//:/$'\n'}" | awk '!x[$0]++'`; glu ":" $_E ) ; }

############################################################
# VARIABLES AND MISC                                       #
############################################################

shopt -s checkhash
shopt -s checkwinsize
shopt -s cmdhist
shopt -s extglob
shopt -s histappend
shopt -s no_empty_cmd_completion
shopt -s progcomp

#-------------------------------------------------

umask 22
ulimit -c 0

PS1="\[\e[37;42m\]\h@\t\[\e[0m\] "

#-------------------------------------------------

export PATH="$HOME/etc/bin:$HOME/toolbox/bin:/usr/local/bin:/usr/local/sbin:/opt/local/sbin:/opt/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/X11R6/bin:/opt/eclipse:/usr/pbs/bin:/opt/xcat/bin"
export MANPATH="/opt/local/share/man:$MANPATH"

export EDITOR=emacs
#export EDITOR=emacs-screen.sh
export ALTERNATE_EDITOR=emacs-nox
export PAGER="less"
export BLOCKSIZE="K"

export GZIP="-9"

export HISTCONTROL=ignoreboth
export HISTFILESIZE=3000
export HISTSIZE=3000

cond_source $HOME/.bash/local/variables.sh

############################################################
# ALIASES                                                  #
############################################################

for file in $HOME/.bash/aliases/*.sh; do
  source $file
done

cond_source $HOME/.bash/local/aliases.sh

############################################################
# COMPLETIONS                                              #
############################################################

for file in $HOME/.bash/completion/*; do
  source $file
done

############################################################
# BINDINGS                                                 #
############################################################

source      $HOME/.bash/bindings.sh
cond_source $HOME/.bash/local/bindings.sh

############################################################
# INTERNET                                                 #
############################################################

export HTTP_PROXY=http://proxy.cat.com:80/
export http_proxy=${HTTP_PROXY}

alias ll='ls -l'

PATH=`repath`; export PATH

