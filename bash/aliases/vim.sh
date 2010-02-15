
function vimpager() {
  vim -R -
}

function vim-() {
  vim -c "ScratchFind" -c "on"
}

# start vim in PAGER mode, with PickerMode plugin
function vim_picker() {
  vim -c "PickerMode" -R -
}

# 1st parameter is command to generate a list
# 2nd parameter is command to run on selection
# 3rd (optional) parameter is DIRECT selection, bypassing VIM
function pick_with_vim() {
  if [ -e ~/.picked ]; then
    rm ~/.picked
  fi

  if [ -n "$3" ]; then
    eval "$1" | sed -n $3p > ~/.picked
  else
    eval "$1" | vim_picker
  fi

  if [ -e ~/.picked ]; then
    $2 "`cat ~/.picked`"
  fi
}

which vim > /dev/null 
RC=`echo $?`
if [ "$RC" = '0' ]; then
  alias vi='vim'
fi

# Create VIM backup dir if not present to avoid "E510 Can't create backup file" error when saving file
if [[ ! -d ${HOME}/.vim.backupdir ]]; then
  mkdir -p ${HOME}/.vim.backupdir
fi

