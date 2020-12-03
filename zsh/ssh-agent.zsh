#!/bin/bash -x
#echo "ssh-agent.zsh running"
if [ "$USE_SSH_AGENT" != "true" ]; then
  exit
fi
#  echo "USE_SSH_AGENT = true"
  if [[ -f ~/.ssh/ssh-agent.env ]]; then
#   echo "ssh-agent.env is a file. sourcing it."
    . ~/.ssh/ssh-agent.env > /dev/null
  fi
#  echo "checking for ssh-agent process. what if the pid exists but it's not ssh-agent."
#  echo "$(ps -p $SSH_AGENT_PID)"
  if ! ps -p $SSH_AGENT_PID > /dev/null; then
    echo "ssh-agent seems to be dead... starting new agent"
    ssh-agent -s > ~/.ssh/ssh-agent.env
    . ~/.ssh/ssh-agent.env > /dev/null
  fi
  # check if default ssh key already loaded
  ssh-add -T $HOME/.ssh/id_rsa > /dev/null
  RTN=$?
  if [[ $RTN -ne 0 ]]; then
    ssh-add
  fi

