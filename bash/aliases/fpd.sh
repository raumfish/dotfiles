if [ `hostname` = "chinkapin-2.fpd.cat.com" ] ; then
   if [ -f ~/.keychain/chinkapin-2.p3fpd.na.cat.com-sh ]  ; then
      . ~/.keychain/chinkapin-2.p3fpd.na.cat.com-sh
   else
      keychain ~/.ssh/id_dsa ~/.ssh/id_rsa
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
alias s='ssh -q -X -Y -l root'
alias gw='ssh ncc01905.fpd.cat.com'
alias pet='ssh shawn@69.93.127.245'
alias root_pet='ssh root@69.93.127.245'

