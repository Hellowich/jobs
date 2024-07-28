#!/bin/bash

backup_dir="backup_$(date +%Y%m%d)"
mkdir -p "$backup_dir"
cp -r /opt/asterisk/rec/* "$backup_dir" ## путь до нужной директории нужно будет изменить под свой
echo "Backup created at $backup_dir"
