#!/bin/bash

if [ -f "$1" ]; then
    wc -w < "$1"
else
    echo "Файл не найден!"
fi
