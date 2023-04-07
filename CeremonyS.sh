printf "START\n"
docker-compose -f $HOME/docker-compose.yaml run --rm --entrypoint "./bin/run ceremony && printf '%s\n'" ironfish 
printf "START\n"
printf "%s\n"
printf "1\n"'
sleep 500000000000000
