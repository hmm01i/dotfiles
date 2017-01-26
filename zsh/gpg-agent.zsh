#!/bin/sh

if [ $(type gpg-agent 2>&1 > /dev/null; echo $?) -eq  0 ]; then
    ps -C gpg-agent > /dev/null
    RTN=$(echo $?)
    if [[ $RTN -ne 0 ]]; then
      eval $(gpg-agent --debug-level advanced --daemon --enable-ssh-support --write-env-file "${HOME}/.gpg-agent-info" --log-file "${HOME}/.gnupg/log/gpg-agent.log")
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
elif [ "$(type ssh-pageant; echo $?)" = 0 ];then
    eval $(/usr/bin/ssh-pageant -r -a "/tmp/.ssh-pageant-$USERNAME")
fi
