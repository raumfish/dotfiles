function prompt_command() {
  printf "\e[30;40;1m%*s\n\e[0m\e[1A" $COLUMNS "$(__git_ps1 "%s --") $PWD"
}

 function save (){
   command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ; 
 }

## Original PS1 definition
#PS1="\[\e[31;43m\]\u@\h\[\e[0m\] "
PS1="[\u@\h \W]\$ "

## Original PROMPT_COMMAND definition
#PROMPT_COMMAND=prompt_command

## Prompt with path only. 
## Use GREEN for non-privileged account
## Use RED for root.
#export PS1="\[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"

## Alternative prompt with user, host and path
#export PS1="\[${COLOR_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with user, host, and path 

## Alternative prompt with datetime\nusername, hostname, global history #, current command #
#PS1="\d@\t\n\u@\h:\!:\#:\w\\$ "

## Alternative PROMPT_COMMAND with user, hostname and path
#export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"' 

## Save bookmarks to folders. Set the current folder you are in as 'save foo', then can cd with 'cd foo' from anywhere
if [ ! -f ~/.dirs ]; then  # if doesn't exist, create it
 touch ~/.dirs
fi

## Two dots move up one level in path. Three dots moves you up two levels in path.
alias ..='cd ..'
alias ...='cd .. ; cd ..'

## List your 'bookmarks'. Ref: http://blog.infinitered.com/entries/show/4
alias show='cat ~/.dirs'
source ~/.dirs  # Initialization for the above 'save' facility: source the .sdirs file
shopt -s cdable_vars # set the bash option so that no '$' is required when using the above facility

alias g='grep -i'  #case insensitive grep
alias f='find . -iname "*"' # Find all files below current directory
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders and files
alias systail='tail -f /var/log/system.log' # Persistent 'tail' of system log file
alias msgtail='tail -f /var/log/messages' # Persistent 'tail' of messages log file

## Shows the commands you use most. Useful to show what you should create alias for.
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

## History
export HISTFILE=${HOME}/history
export HISTCONTROL=ignoredups # Ignores dupes in the history
export HISTFILESIZE=5000
export HISTSIZE=5000
#export HISTIGNORE="&:[ ]*:exit:cd:pwd:ls:ll:history:clear:reset:stty"
export HISTIGNORE="&:[ ]*:exit:cd:pwd:ls:ll:history[ ]*:h[ ]*:clear:cls:reset:stty:git:ssh:rsh:ps:man:qdel:less:top:whoami:w:who:nslookup:finger:id:file:pbsnodes:tracejob:lastlog:env:more:qmgr:qstat:l:uptime"

shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s cdspell
shopt -s nocaseglob
#shopt -s xpg_echo
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#export TERM="xterm-256color"
export TERM="xterm"

export FIND_OPTIONS="-name .svn -prune -o -name .git -prune -o -name .hg -prune -o -name *.swp -prune -o -name *~ -prune -o"

export DB_HOST="localhost"
export DB_ADAPTER="sqlite"
export DB_NAME="db/development.sqlite3"
export DB_USER=""

export AMAZON_ACCESS_KEY_ID=""
export AMAZON_SECRET_ACCESS_KEY=""

export LEO_EDITOR="emacs"

## Github.com stuff 
export GISTY_DIR="$HOME/dev/gists"

## Ruby stuff
export GEM_HOME=/usr/lib/ruby/gems/1.8
export RUBYOPT=rubygems

## PATH
#export PATH=$PATH

## IRC
export IRCNAME='Shawn Skriver'

## Terminal
shopt -s checkwinsize # Update values of LINES and COLUMNS after each command
#set -o vi
set -o emacs

## Time
export TZ=CST6CDT

#-----------------------------------------------------------------------
#  set Bash prompts 
#  PS4 shows the function name when execution is inside a function and
#  the xtrace option is set.
#-----------------------------------------------------------------------
export PS2='continue> '
export PS3='choose: '
#export PS4='|${BASH_SOURCE} ${LINENO}${FUNCNAME[0]:+ ${FUNCNAME[0]}()}|  '
export PS4='(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]} - [${SHLVL},${BASH_SUBSHELL}, $?] '

## Emacs-related
#alias emacs=emacs-screen.sh

