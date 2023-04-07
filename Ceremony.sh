tmux new-session -d -s ironfish 'docker-compose -f $HOME/docker-compose.yaml run --rm --entrypoint "./bin/run ceremony" ironfish && printf "\n" && printf "\n"'
tmux attach -t ironfish
