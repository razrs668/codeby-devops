#!/bin/bash

# Определение количества файлов в папке myfolder
file_count=$(ls -1 ~/myfolder | wc -l)
echo "Количество файлов в папке myfolder: $file_count"

# Исправление прав второго файла с 777 на 664
chmod 664 ~/myfolder/file2.txt

# Определение пустых файлов и их удаление
empty_files=$(find ~/myfolder -size 0)
if [[ -n $empty_files ]]; then
    echo "Пустые файлы: $empty_files"
    rm $empty_files
else
    echo "Пустых файлов не найдено."
fi

# Удаление всех строк, кроме первой, в остальных файлах
sed -i '2,$d' ~/myfolder/*.txt
