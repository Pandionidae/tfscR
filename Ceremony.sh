 tmux new-session -d -s tfsc 'docker-compose -f $HOME/docker-compose.yaml run --rm --entrypoint "./bin/run ceremony" ironfish && RETURN && RETURN && Ctrl+B && d'
