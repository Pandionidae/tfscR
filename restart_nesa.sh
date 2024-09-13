#!/bin/bash


URL="https://node.nesa.ai/nodes/HWV9ajkfZo4wkBV5GXX6JMMWr19eZTdjT45AoupjfEwV"  
#!/bin/bash

parse_number() {
    curl -s "$URL" | grep -oP '(?<=<div class="flex items-center gap-2 text-lg">)\d+'
}

# Змінна для зберігання попередньої цифри
prev_number=$(parse_number)

# Цикл, що виконується постійно
while true; do
    echo "Попередня цифра: $prev_number"
    sleep 600  # Чекаємо 10 хвилин

    # Парсимо цифру знову
    current_number=$(parse_number)

    # Виводимо поточну та попередню цифри
    echo "Поточна цифра: $current_number"

    # Перевіряємо, чи цифра не змінилася
    if [[ "$current_number" == "$prev_number" ]]; then
        # Виконуємо вашу команду, якщо цифра не змінилася
        echo "Цифра не змінилася. Виконую команду."
        # Замість echo напишіть команду, яку потрібно виконати
        ./restart.sh
    else
        echo "Цифра змінилася. Чекаємо ще 10 хвилин."
    fi

    # Оновлюємо попереднє значення цифри
    prev_number="$current_number"
done
