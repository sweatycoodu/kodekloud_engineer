# Script / Instructions for KodeKloud Engineer Task: Linux Postfix Troubleshooting.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck

# Switch to root user.
sudo su

# Check the status of postfix to identify error.
systemctl status postfix

# Based on the error message fatal: parameter inet_interfaces: no local interface found for ::1 take the following steps.
vi /etc/hosts/ # comment out the line with ::1 localhost

# Edit the /etc/postfix/main.cf file and add the following line.
vi /etc/postfix/main.cf # modify the line inet_interfaces = all to inet_interfaces = localhost, 127.0.0.1.

# Restart the postfix service.
systemctl restart postfix

# Check the status of postfix to confirm it is running.
systemctl status postfix
