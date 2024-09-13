#!/bin/bash


URL="https://api-test.nesa.ai/nodes/HWV9ajkfZo4wkBV5GXX6JMMWr19eZTdjT45AoupjfEwV/stat"  
#!/bin/bash

parse_number() {
  curl -s "$URL" | grep -oP '"requestsCount":\K\d+'
}

# Змінна для зберігання попередньої цифри
prev_number=$(parse_number)

# Цикл, що виконується постійно
while true; do
    echo "Поточний час: $(date)"
    echo "Попередня цифра: $prev_number"
    echo "Чекаємо 15хв"
    sleep 900  # Чекаємо 15 хвилин

    # Парсимо цифру знову
    current_number=$(parse_number)

    # Виводимо поточну та попередню цифри
    echo "Поточна цифра: $current_number"

    # Перевіряємо, чи цифра не змінилася
    if [[ "$current_number" == "$prev_number" ]]; then
        # Виконуємо вашу команду, якщо цифра не змінилася
        echo "Цифра не змінилася. Виконую команду."
        # напишіть команду, яку потрібно виконати
        docker restart orchestrator ipfs_node mongodb docker-watchtower-1
    else
        echo "Цифра змінилася. Чекаємо ще 10 хвилин."
    fi

    # Оновлюємо попереднє значення цифри
    prev_number="$current_number"
done
