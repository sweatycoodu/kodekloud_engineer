# Script / Instructions for KodeKloud Engineer Task: Create a user with a non-interactive shell.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create a user called ammar with a non-interactive shell.
sudo useradd -s /sbin/nologin ammar

# Verify the user was created and has a non-interactive shell.
cat /etc/passwd | grep ammar | cut -d: -f7