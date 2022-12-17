rest37523563=0
while true
do

if [ $rest37523563 -gt 10 ]
then
tmux kill-session -t tfsc
sleep 5
rest37523563=0
printf "restart"
printf "\n"
fi
       tmux new-session -d -s tfsc 'cd $HOME/tfsc/ && $HOME/tfsc/tfsc -m'
       rest37523563=$((rest37523563 + 1))
        printf "sleep"
        for((sec=0; sec<60; sec++))
        do
                printf "."
                sleep 1
        done
        printf "\n"
        
done
