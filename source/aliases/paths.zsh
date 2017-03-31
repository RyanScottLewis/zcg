if [ "$HOSTNAME" = "RyMacMini.local" ]; then
  export MEDIA_PATH='/Volumes/Media'
else
  export MEDIA_PATH='/mnt/Media'
fi

alias code="cd '$MEDIA_PATH/Self/Science/Technology/Software Engineering'"
