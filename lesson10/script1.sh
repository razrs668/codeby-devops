#!/bin/bash

# Создание папки myfolder/Переход в папку myfolder
mkdir ~/myfolder; cd ~/myfolder

# Создание файла с приветствием и текущим временем и датой
echo "Hello $(USER)" > file1.txt
echo "$(date)" >> file1.txt

# Создание пустого файла с правами 777
touch file2.txt ; chmod 777 file2.txt

# Создание файла с одной строкой длиной в 20 случайных символов
head /dev/urandom | tr -dc A-Za-z0-9 | head -c 20 > file3.txt

# Создание пустых файлов
touch file4.txt; touch file5.txt
