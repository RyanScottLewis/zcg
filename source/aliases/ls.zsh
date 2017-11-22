UNAME=`uname`

if [[ "$UNAME_STR" == 'Darwin' || "$UNAME_STR" == 'FreeBSD' ]]; then
  alias l="ls -alhG"
else
  alias l="ls -alh --color=auto"
fi

unset UNAME_STR
