#!/bin/bash

# Check if sniper command is available
if sudo sniper --help &> /dev/null; then
    echo "Sn1per is already installed. Skipping installation."
else
    echo "Sn1per not found. Installing Sn1per..."

    # Move autosniper to /usr/bin/
    if [ -f "autosniper" ]; then
        sudo mv autosniper /usr/bin/
        sudo chmod +x /usr/bin/autosniper
    else
        echo "Error: 'autosniper' file not found in the current directory."
        exit 1
    fi

    # Clone the Sn1per repository and run its installation script
    sudo git clone https://github.com/1N3/sn1per
    cd sn1per || { echo "Failed to enter sn1per directory"; exit 1; }
    sudo bash install.sh

    echo "Sn1per installation completed. You can now run the command using 'autosniper'."
fi
