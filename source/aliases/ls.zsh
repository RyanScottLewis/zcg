UNAME=`uname`

if [[ "$UNAME_STR" == 'Linux' ]]; then
  alias l="ls -al --color=auto"
elif [[ "$UNAME_STR" == 'Darwin' || "$UNAME_STR" == 'FreeBSD' ]]; then
  alias l="ls -alG"
fi

unset UNAME_STR
