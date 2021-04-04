
dir_exists() {
    dir=$1

    if [ -d "$dir" ]; then
        exit 0
    fi

    echo "$dir not found"
    exit 1
}

