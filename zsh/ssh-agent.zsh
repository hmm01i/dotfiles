#!/bin/zsh
if [[ -f ~/.ssh/ssh-agent.env ]]; then
  if [ "$USE_SSH_AGENT" = "true" ]; then
    . ~/.ssh/ssh-agent.env > /dev/null
    if ! ps -p $SSH_AGENT_PID > /dev/null; then
      echo "ssh-agent seems to be dead... starting new agent"
      ssh-agent -s > ~/.ssh/ssh-agent.env
      . ~/.ssh/ssh-agent.env > /dev/null
      ssh-add
    fi
  fi
  . ~/.ssh/ssh-agent.env > /dev/null
else
  rm ~/.ssh/ssh-agent.env
fi
