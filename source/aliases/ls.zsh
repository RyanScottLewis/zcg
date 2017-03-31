unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  alias l="ls -al --color=auto"
elif [[ "$unamestr" == 'Darwin' || "$unamestr" == 'FreeBSD' ]]; then
  alias l="ls -alG"
fi
