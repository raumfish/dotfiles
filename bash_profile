
. ~/.bashrc

ps -ef | grep emacs | grep skrivsm | grep -v grep | grep -v defunct >/dev/null 2>&1
RC=`echo $?`

if [[ $RC != '0' ]]; then
    /usr/bin/emacs&
fi
