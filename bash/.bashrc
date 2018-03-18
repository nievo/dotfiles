# Load all files from bash config directory
BASH_CONFIG_PATH=${XDG_CONFIG_HOME:=$HOME/.config}/bash

if [ -d $BASH_CONFIG_PATH ]; then
  for file in $BASH_CONFIG_PATH/*.bash; do
    source $file
  done
fi

