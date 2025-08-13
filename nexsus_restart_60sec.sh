count=0

while true
do
    count=$((count + 1))
    date=$(date +"%H:%M")
    echo "🔄 Цикл: ${count} | Last Update: ${date}"

    # Завантажити змінну NODE_ID
    source ~/.bashrc
    source ~/.profile

    if [ -z "$NODE_ID" ]; then
        echo "❌ NODE_ID не задано! Перевір ~/.profile"
    else
        tmux new-session -d -s nexus "source ~/.profile && /root/.nexus/bin/nexus-network start --node-id ${NODE_ID}"
        echo "✅ Стартував node з ID: ${NODE_ID}"
    fi

    echo "⏳ wait 1m"
    sleep 1m
    tmux kill-session -t nexus
    echo
done
