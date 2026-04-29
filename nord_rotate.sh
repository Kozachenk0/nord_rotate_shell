#!/bin/bash

echo "Enter country code (e.g. us, uk, de, au):"
read COUNTRY

while true; do
  echo "Reconnecting to $COUNTRY..."

  nordvpn disconnect
  sleep 2

  nordvpn connect $COUNTRY

  echo "Connected. Waiting 300 seconds..."
  sleep 300
done

# To use this script, type "touch nord_rotate.sh" into your terminal
# Then, using nano or your preferred editor, paste this in
# Save the file, make the file executable using "chmod +x nord_rotate.sh"
# Then launch using "./nord_rotate.sh"

# Select your nation of choice by typing in the country code, and enjoy!
# Shut down the script by simply pressing Ctrl + C
