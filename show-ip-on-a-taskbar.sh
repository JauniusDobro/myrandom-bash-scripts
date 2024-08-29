#!/usr/bin/env bash

# Install Zenity

sudo apt update
sudo apt install zenity -y


# Create .sh file
echo '#!/usr/bin/env bash

# Add delay 
sleep 10

# Get local IP
local_ip=$(hostname -I)

# Display the local IP
zenity --info --title="Your Local IP Address" --text="Your Local IP Address is: $local_ip"

' > show_ip.sh

# Change permissions
chmod +x show_ip.sh

# Execute the file
./show_ip.sh
