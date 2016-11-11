#!/bin/bash

echo -e "$(tput setaf 6)Checking for trailing whitespace in $1 ...$(tput sgr0)"
grep -n --color=always '\ $' $1
  RC=$?
  if [ "$RC" -eq 0 ]; then
    echo -e "$(tput setaf 1)Trailing whitespace found!$(tput sgr0)"
    exit 1
  fi
exit 0
