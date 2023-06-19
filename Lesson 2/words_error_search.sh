#!/bin/bash

# Введите имя файла, который нужно проверить
read -p "Введите имя файла: " filename

# Проверяем наличие слова "error" в файле
if grep -q "error" "$filename"; then
    # Удаляем файл
    rm "$filename"
    echo "Файл $filename удален"
else
    echo "Файл $filename не содержит слово 'error'"
fi