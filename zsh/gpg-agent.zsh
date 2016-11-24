#!/bin/sh

ps -C gpg-agent > /dev/null
RTN=$(echo $?)
if [[ $RTN -ne 0 ]]; then
  eval $(gpg-agent --debug 9 --daemon --enable-ssh-support "${HOME}/.gpg-agent-info" --log-file '/home/jsohl/.gnupg/log/gpg-agent.log')
fi

if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
  export SSH_AGENT_PID
  gpg-connect-agent updatestartuptty /bye > /dev/null
fi

GPG_TTY=$(tty)
export GPG_TTY

