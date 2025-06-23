while true
do
        date=$(date +"%H:%M")
        echo Last Update: ${date}
        for((m=0; m<1; m++))
        do
        tmux new-session -d -s nexus "source /root/.bashrc && source ~/.profile && nexus-network start --node-id ${NODE_ID}"
                printf "wait 1m"
                sleep 1m
        done
        printf "\n"
done
