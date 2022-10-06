# Script / Instructions for KodeKloud Engineer Task: Linux Services.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Install cups.
sudo yum install cups -y

# Start the cups service.
sudo systemctl start cups

# Verify the cups service is running.
sudo systemctl status cups

# Enable cups service on boot.
sudo systemctl enable cups