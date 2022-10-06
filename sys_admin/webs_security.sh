# Script / Instructions for KodeKloud Engineer Task: Web Server Security.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Ensure the apache version is not being displayed.
vi /etc/httpd/conf/httpd.conf # Append with 'ServerTokens Prod' & 'ServerSignature Off' two lines, no quotes.
# Save and exit.

# Disable directory browsing in Apache configuration.
vi /etc/httpd/conf/httpd.conf # Remove the 'Indexes' from the 'Options Indexes FollowSymLinks' line, no quotes.
# Save and exit.

# Restart Apache.
systemctl restart httpd

