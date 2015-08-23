#/bin/bash

read -p "Install bash git prompt (Y/n)" prompt
echo $prompt
if [ "$prompt" != "n" ] && [ "$prompt" != "N" ]
then
  echo "Installing bash git prompt"
  cd ~
  git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
fi

read -p "Install puppet git hooks (Y/n)" prompt
if [ "$prompt" != "n" ] && [ "$prompt" != "N" ]
then
  echo "Installing puppet git hooks"
  cd ~
  git clone https://github.com/drwahl/puppet-git-hooks.git .puppet-git-hooks
fi
