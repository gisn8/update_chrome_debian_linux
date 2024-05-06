#!/bin/bash

echo ""
echo $(date +"%F %T")

# URL of the latest Chrome .deb package
CHROME_URL="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"

# Download the latest .deb package
wget "$CHROME_URL" -O /tmp/google-chrome.deb

# Install the downloaded package
sudo dpkg -i /tmp/google-chrome.deb

# Install any missing dependencies
sudo apt-get install -f

# Clean up the downloaded .deb file
rm /tmp/google-chrome.deb

notify-send "Google Chrome Updated"