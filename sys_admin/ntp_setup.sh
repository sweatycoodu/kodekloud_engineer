# Script / Instructions for KodeKloud Engineer Task: Linux NTP Setup.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Install the NTP package.
yum install -y ntp

# Update the configuration file to add '3.europe.pool.ntp.org'.
echo "server 3.europe.pool.ntp.org" >> /etc/ntp.conf

# Confirm the new server is in the configuration file.
cat /etc/ntp.conf | grep europe

# As per the task instructions - do not restart the service.
