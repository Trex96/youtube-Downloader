#!/bin/bash

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

# Check if venv exists
if [ ! -d "venv" ]; then
    echo "Error: Virtual environment (venv) not found. Please follow the README to set it up."
    exit 1
fi

# Activate venv and run the app
echo "Starting YouTube DL GUI..."
./venv/bin/python main.py
