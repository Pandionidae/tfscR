while true
do
        #tmux kill-session -t tfsc 
        date=$(date +"%H:%M")
        echo Last Update: ${date}
        for((m=0; m<1; m++))
        do
        tmux new-session -d -s subt 'cd $HOME/snap/lxd/com/ && $HOME/snap/lxd/com/tfs_v0.32.2_1a7afa8_testnet -m'
                printf "wait 1m"
                sleep 1m
        done
        printf "\n"
done
