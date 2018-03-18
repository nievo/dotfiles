if [ -x /usr/bin/dircolors ]; then
  DIRCOLORS=$BASH_CONFIG_PATH/dircolors
  test -r $DIRCOLORS && eval "$(dircolors -b $DIRCOLORS)"
fi
