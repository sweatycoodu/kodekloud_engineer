# Script / Instructions for KodeKloud Engineer Task: Linux User Expiry.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create a new user named 'jim' with the expiry date of 2021-04-15.
# Run command on your assigned server.
sudo useradd -e 2021-04-15 jim

# Verify the user 'jim' has been created.
sudo grep jim /etc/passwd

# Verify the user 'jim' has an expiry date of 2021-04-15.
sudo chage -l jim