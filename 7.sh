#!/bin/bash

length=12
password=$(tr -dc A-Za-z0-9 </dev/urandom | head -c $length ; echo '')
echo "$password" >> passwords.txt 
# cкрипт генерит пароли из случайных символов и цифр латиницы верхнего и нижнего регистра, 
# затем параметр передается и записывается в файл, длинну можно указать в переменной length