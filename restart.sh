while true
do
 tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfs_v0.23.0_afb2c8c_devnet_strip -m'
        fi
        date=$(date +"%H:%M")
        echo Last Update: ${date}
        printf "sleep"
        for((m=0; m<60; m++))
        do
                printf "."
                sleep 1m
        done
        printf "\n"
done
