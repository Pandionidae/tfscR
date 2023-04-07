printf "START\n"
docker-compose -f $HOME/docker-compose.yaml run --rm --entrypoint "./bin/run ceremony" ironfish
sleep 6
printf "%s\n"
printf "1\n"'
sleep 500000000000000
