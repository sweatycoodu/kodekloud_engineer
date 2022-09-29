# Script / Instructions for KodeKloud Engineer Task: Application Security.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Open port 8092 for nginx.
iptables -A INPUT -p tcp --dport 8092 -j ACCEPT

# Block port 3003 for apache.
iptables -A INPUT -p tcp --dport 3003 -j DROP

# Save the iptables rules.
iptables-save > /etc/sysconfig/iptables

# Make the rules permanent and persistent across reboots.
chkconfig iptables on

# Restart iptables.
service iptables restart

# Restart nginx.
service nginx restart

# Restart httpd.
service httpd restart

# Verify the iptables rules are in place.
iptables -L

# Verify the nginx and httpd services are running.
service nginx status
service httpd status