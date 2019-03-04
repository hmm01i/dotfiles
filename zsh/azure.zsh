#!/bin/sh
# check if az is installed
  # if so, load bash completion for az-cli
if type az 2>&1 > /dev/null;
then
  autoload -U +X bashcompinit && bashcompinit
    source /usr/local/etc/bash_completion.d/az
fi

