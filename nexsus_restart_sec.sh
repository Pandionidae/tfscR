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
        tmux new-session -d -s nexus "source ~/.profile && /root/.nexus/bin/nexus-network start --node-id ${NODE_ID} --max-threads 8"
        echo "✅ Стартував node з ID: ${NODE_ID}"
    fi

    wait_time=$((RANDOM % 16 + 30)) 
    echo "⏳ wait ${wait_time}sec"
    sleep $wait_time
    tmux kill-session -t nexus
    echo
done
