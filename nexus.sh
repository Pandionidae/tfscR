while true
do
        date=$(date +"%H:%M")
        echo Last Update: ${date}
        for((m=0; m<1; m++))
        do
        tmux new-session -d -s nexus 'source /root/.bashrc && nexus-network start --node-id 7050816'
                printf "wait 1m"
                sleep 1m
        done
        printf "\n"
done
