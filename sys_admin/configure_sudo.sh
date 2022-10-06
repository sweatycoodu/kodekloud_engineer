# Script / Instructions for KodeKloud Engineer Task: Configure Sudo.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Provide sudo access to the user mark.
sudo usermod -aG wheel mark

# Setup password-less sudo in the sudoers file.
sudo sed -i 's/# %wheel\tALL=(ALL)\tNOPASSWD: ALL/%wheel\tALL=(ALL)\tNOPASSWD: ALL/g' /etc/sudoers