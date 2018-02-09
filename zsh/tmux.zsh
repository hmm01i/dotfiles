if [ -z $TMUX ];
  then
    tmux new -t default || tmux new -s default
fi
