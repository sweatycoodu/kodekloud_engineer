# Script / Instructions for KodeKloud Engineer Task: Disable root login.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Disable root login.
sudo passwd -l root

# Verify root login is disabled.
sudo passwd -S root

# Disable root login via ssh.
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/g' /etc/ssh/sshd_config

# Restart sshd.
sudo systemctl restart sshd

# Verify root login via ssh is disabled.
sudo grep PermitRootLogin /etc/ssh/sshd_config