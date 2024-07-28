#!/bin/bash

# Определяем дистрибутив после определения в зависимости от значения переменной DISTRO вызываем функцию через case
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
elif [ -f /etc/lsb-release ]; then
    . /etc/lsb-release
    DISTRO=$DISTRIB_ID
elif [ -f /etc/debian_version ]; then
    DISTRO=debian
elif [ -f /etc/redhat-release ]; then
    DISTRO=redhat
else
    echo "Неизвестный дистрибутив"
    exit 1
fi
update_debian() {
    sudo apt update
    sudo apt upgrade -y
}
update_redhat() {
    sudo yum update -y
    sudo yum upgrade -y
}

update_fedora() {
    sudo dnf update -y
    sudo dnf upgrade -y
}

case $DISTRO in
    ubuntu|debian|linuxmint)
        update_debian
        ;;
    centos|rhel|redhat|fedora)
        if [ "$DISTRO" == "fedora" ]; then
            update_fedora
        else
            update_redhat
        fi
        ;;
    *)
        echo "Скрипт не поддерживает этот дистрибутив: $DISTRO"
        exit 1
        ;;
esac
