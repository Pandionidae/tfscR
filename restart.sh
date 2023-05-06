rest37523563=1
while true
do

if test $rest37523563 -gt 720
then
tmux kill-session -t tfs_v0.23.0_afb2c8c_devnet_strip
sleep 5
rest37523563=0
printf "restart"
printf "\n"
fi
       tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfs_v0.23.0_afb2c8c_devnet_strip -m'
       rest37523563=$((rest37523563 + 1))
        printf "sleep " 
        printf $rest37523563
        for((sec=0; sec<10; sec++))
        do
                printf "."
                sleep 1
        done
        printf "\n"
        
done
