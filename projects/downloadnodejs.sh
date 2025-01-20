#!/bin/bash

#giving  version choice
echo "Choose Node.js version to download:"
echo "1) Node.js v14.x"
echo "2) Node.js v16.x"
echo "3) Node.js v18.x"
read -p "Enter the version number (1-3): " version_choice

# Download and install the chosen Node.js version
case $version_choice in
    1)
        echo "Downloading Node.js v14.x..."
        # Download Node.js v14.x (Linux 64-bit)
        wget https://nodejs.org/dist/v14.x/node-v14.x.x-linux-x64.tar.xz
        ;;
    2)
        echo "Downloading Node.js v16.x..."
        # Download Node.js v16.x (Linux 64-bit)
        wget https://nodejs.org/dist/v16.x/node-v16.x.x-linux-x64.tar.xz
        ;;
    3)
        echo "Downloading Node.js v18.x..."
        # Download Node.js v18.x (Linux 64-bit)
        wget https://nodejs.org/dist/v18.x/node-v18.x.x-linux-x64.tar.xz
        ;;
    *)
        echo "Invalid option. Please choose a valid version (1-3)."
        ;;
esac
#you can use curl command also as per requirement
