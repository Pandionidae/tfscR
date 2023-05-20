while true
do
        #tmux kill-session -t tfsc 
        date=$(date +"%H:%M")
        echo Last Update: ${date}

        for((m=0; m<60; m++))
        do
        tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfs_v0.23.0_afb2c8c_devnet_strip -m'
                printf "wait 1m"
                printf "\n"
                sleep 1m
                
        done
        printf "\n"
done
