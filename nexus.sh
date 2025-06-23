
while true
do
    date=$(date +"%H:%M")
    echo "Last Update: ${date}"

    # Завантажити змінну NODE_ID
    source /root/.bashrc
    source ~/.profile

    if [ -z "$NODE_ID" ]; then
        echo "❌ NODE_ID не задано! Перевір ~/.profile"
    else
        tmux new-session -d -s nexus "source ~/.profile && cd $HOME/.nexus/bin && nexus-network start --node-id ${NODE_ID}"
        echo "✅ Стартував node з ID: ${NODE_ID}"
    fi

    echo "⏳ wait 1m"
    sleep 1m
    echo
done
