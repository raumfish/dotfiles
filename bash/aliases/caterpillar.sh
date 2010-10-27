if [ `hostname` = "chinkapin.mw.na.cat.com" ] ; then
   if [ -f ~/.keychain/chinkapin-2.mw.na.cat.com-sh ]  ; then
      . ~/.keychain/chinkapin-2.mw.na.cat.com-sh
   else
      keychain ~/.ssh/id_dsa ~/.ssh/id_rsa ~/.ssh/git_id_rsa ~/.ssh/hpc_id_dsa
   fi
   num=`ps -ef | grep [s]ynergys | wc -l`
   [ "$num" -lt 1 ] &&  synergys --config /etc/synergy.conf
fi

if [ `hostname` = "ncc01905.fpd.cat.com" ] ; then
   if [ -f ~/.keychain/ncc01905.fpd.cat.com-sh ]  ; then
      . ~/.keychain/ncc01905.fpd.cat.com-sh
   else
      keychain ~/.ssh/id_dsa ~/.ssh/id_rsa
   fi
fi

alias ssh='ssh -X -Y'
alias s='ssh -l root'

alias gw='ssh n1mwph1.corp.cat.com'
alias root_gw='ssh root@n1mwph1.corp.cat.com'

alias pet='ssh shawn@69.93.127.245'
alias root_pet='ssh root@69.93.127.245'
alias animal='ssh skrivsm@72.14.185.188'
alias root_animal='ssh root@72.14.185.188'

