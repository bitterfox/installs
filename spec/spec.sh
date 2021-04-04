#!/bin/bash

exists_dir() {
    dir=$1

    if [ -d "$dir" ]; then
        return
    fi

    echo "$dir not found"
    exit 1
}

exists_file() {
    file=$1

    if [ -f "$file" ]; then
        return
    fi

    echo "$file not found"
    exit 1
}

exists_command() {
    command=$1

    if [ ! `command -v $command` ]; then
        echo "$command not found"
        exit 1
    fi
}

exists_font() {
    font=$1

    if [ -z "`fc-list | grep "$1"`" ]; then
        echo "$font not found"
        exit 1
    fi
}

package_installed() {
    package=$1

    if [ -z "`apt list --installed | awk -F/ '{print $1}' | grep -E "^$package$"`" ]; then
        echo "$package is not installed"
        exit 1
    fi
}
