while true
do
        #tmux kill-session -t tfsc 
        date=$(date +"%H:%M")
        echo Last Update: ${date}
        for((m=0; m<1; m++))
        do
        tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfs_v0.25.1_80415dc_devnet -m'
                printf "wait 1m"
                sleep 1m
        done
        printf "\n"
done
