#/bin/bash

#FIXME: this doesn't work if unless executed in repo...
# so either fix that or check if we're in the repo

_gitroot=$(git rev-parse --show-toplevel)
read -p "Install bash git prompt (Y/n) " prompt
echo $prompt
if [ "$prompt" != "n" ] && [ "$prompt" != "N" ]
then
  echo "Installing bash git prompt"
  cd ~
  git clone https://github.com/magicmonty/bash-git-prompt.git .bash-git-prompt
fi

read -p "Install puppet git hooks (Y/n) " prompt
if [ "$prompt" != "n" ] && [ "$prompt" != "N" ]
then
  echo "Installing puppet git hooks"
  cd ~
  git clone https://github.com/drwahl/puppet-git-hooks.git .puppet-git-hooks
fi

read -p "Source custom bashrc. (This does NOT overwrite .bashrc) (Y/n) " prompt
if [ "$prompt" != "n" ] && [ "$prompt" != "N" ]
then
  echo "Sourcing custom bashrc."
  echo ". ~/customizations/customrc" >> ~/.bashrc
fi

read -p "Create git-template (Y/n) " prompt
echo $prompt
if [ "$prompt" != "n" ] && [ "$prompt" != "N" ]
then
	cd ~
	test -d .git-template || mkdir .git-template
	cp -r "${_gitroot}/githooks" ~/.git-template/
fi
