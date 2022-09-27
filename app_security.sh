# Open all incoming connections to the nginx port 8082 using iptables.
# Block all incoming connections to the httpd port 8094 using iptables.

# Open port 8082
iptables -A INPUT -p tcp --dport 8082 -j ACCEPT

# Block port 8094
iptables -A INPUT -p tcp --dport 8094 -j DROP

# Save the iptables rules
iptables-save > /etc/sysconfig/iptables

# Restart iptables
service iptables restart

# Restart nginx
service nginx restart

# Restart httpd
service httpd restart

# Verify the iptables rules are in place.
iptables -L

# Verify the nginx and httpd services are running.
service nginx status
service httpd status

# Ensure the above changes are permanent.
chkconfig nginx on
chkconfig httpd on

