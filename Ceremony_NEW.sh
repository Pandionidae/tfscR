printf "START\n"
docker-compose -f $HOME/docker-compose.yaml run --rm --entrypoint "./bin/run ceremony" ironfish
sleep 6
printf "\n"
printf "\n"'
sleep 500000000000000
