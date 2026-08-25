#!/bin/bash
source /etc/os-release

case "$ID" in
  debian|ubuntu)
    sudo apt-get update
    sudo apt-get install -y python3-venv python3-brotli yt-dlp ffmpeg
    ;;
  arch)
    sudo pacman -Syu --noconfirm python-brotli yt-dlp ffmpeg
    ;;
esac

python3 -m venv .
source bin/activate
pip install -r requirements.txt
chmod +x remote.sh
echo 'All done! To run the code, type python3 launcher.py'
