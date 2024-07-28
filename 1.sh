#!/bin/bash

src_dir="/home/software"
dest_dir="/opt/software"
mkdir -p "$dest_dir"
cp "$src_dir"/*.txt "$dest_dir"
ls -la "$dest_dir"
#берем параметры source dir и dest dir, создаем дестдир копируем все txt файлы с исходной папки в папку назначения, смотрим че там внутри