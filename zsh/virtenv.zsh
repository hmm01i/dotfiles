if type virtualenvwrapper.sh 2>&1 > /dev/null;
then
  WRAPPER_CMD=$(which virtualenvwrapper.sh)
#  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/workspace
  source $WRAPPER_CMD
fi

