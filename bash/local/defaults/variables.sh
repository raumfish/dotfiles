function prompt_command() {
  printf "\e[30;40;1m%*s\n\e[0m\e[1A" $COLUMNS "$(__git_ps1 "%s --") $PWD"
}

 function save (){
   command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ; 
 }

## Original PS1 definition
#PS1="\[\e[31;43m\]\u@\h\[\e[0m\] "

## Original PROMPT_COMMAND definition
#PROMPT_COMMAND=prompt_command

## Prompt with path only. 
## Use GREEN for non-privileged account
## Use RED for root.
#export PS1="\[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"

## Alternative prompt with user, host and path
export PS1="\[${COLOR_GRAY}\]\u@\h \[${COLOR_GREEN}\]\w > \[${COLOR_NC}\]"  # Primary prompt with user, host, and path 

## Alternative PROMPT_COMMAND with user, hostname and path
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"' 

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
alias f='find . -iname' # Find all files below current directory
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders and files
alias top='top -o cpu' # Run 'top' wit cpu option
alias systail='tail -f /var/log/system.log' # Persistent 'tail' of syste log file

## Shows the commands you use most. Useful to show what you should create alias for.
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

export HISTCONTROL=ignoredups # Ignores dupes in the history

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#export TERM="xterm-256color"
export TERM="xterm"

export FIND_OPTIONS="-name .git -prune -o -name .hg -prune -o -name *.swp -prune -o"

export DB_HOST="localhost"
export DB_ADAPTER="sqlite"
export DB_NAME="db/development.sqlite3"
export DB_USER=""

export AMAZON_ACCESS_KEY_ID=""
export AMAZON_SECRET_ACCESS_KEY=""

export LEO_EDITOR="gvim"

