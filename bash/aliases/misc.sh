
alias ls='ls --color=auto'
alias ll='ls -l'
alias l='ls -l'
alias h='history 25'

alias less='less -i -R -S -c'

alias grep='grep --color=auto'

alias bash_update="source $HOME/.bashrc"

#-------------------------------------------------

function vim-() {
  vim -c "ScratchFind" -c "on"
}

function __() {
  cp $1 __$1
}

function gril() {
  find . -type f -print0 | xargs -0 grep -il "$1"
}

function gri() {
  find . -type f -print0 | xargs -0 grep -i --color=auto "$1"
}

function latest() {
  ls -d -t "$@" | head -n1
}

function du_sort() {
  du -b --max-depth=1 | sort -n | _thousands
}

function size_sort() {
  find . -type f -printf "%s %p\n" | sort -n | _thousands
}

#-------------------------------------------------

alias gem_install="sudo gem install --no-ri --no-rdoc -r"

alias apg='apg -n 20 -m 8 -M SNCL -t'

function _tsocks() {
  TSOCKS_CONF_FILE=$HOME/etc/tsocks.conf tsocks "$@"
}
