#!/bin/bash

# YouTube Video Downloader - Setup Script for macOS

# Get the directory of the script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"

echo "------------------------------------------------"
echo "Starting Setup for YouTube Video Downloader..."
echo "------------------------------------------------"

# 1. Check for Homebrew (required for Deno/FFmpeg)
if ! command -v brew &> /dev/null; then
    echo "[!] Homebrew not found. Please install it from https://brew.sh/"
    exit 1
fi

# 2. Install System Dependencies
echo "[+] Checking system dependencies (deno, ffmpeg)..."
brew install deno ffmpeg

# 3. Setup Virtual Environment
if [ ! -d "venv" ]; then
    echo "[+] Creating virtual environment..."
    python3 -m venv venv
else
    echo "[*] Virtual environment already exists."
fi

# 4. Install Python Packages
echo "[+] Installing/Updating Python packages..."
./venv/bin/pip install --upgrade pip setuptools wheel

# Install wxPython (specific version for stability on Mac/Python 3.14)
echo "[+] Installing wxPython..."
./venv/bin/pip install wxPython==4.2.4

# Install from requirements.txt
if [ -f "requirements.txt" ]; then
    echo "[+] Installing requirements from requirements.txt..."
    ./venv/bin/pip install -r requirements.txt
fi

# Install latest yt-dlp nightly
echo "[+] Installing latest yt-dlp (nightly build)..."
./venv/bin/pip install -U --pre "yt-dlp[default]"

# 5. Fix yt-dlp binary location for the GUI config
echo "[+] Linking yt-dlp to app config folder..."
mkdir -p "$HOME/.config/yt-dlg"
cp "./venv/bin/yt-dlp" "$HOME/.config/yt-dlg/yt-dlp"

echo "------------------------------------------------"
echo "Setup Complete!"
echo "------------------------------------------------"
echo "To run the app, use: ./launch.sh"
echo "Or double-click: Launch.command"
echo "------------------------------------------------"
