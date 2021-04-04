#!/bin/bash

if [ ! `command -v docker` ]; then
    echo "Docker not found"
    exit 1
fi
