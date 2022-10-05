# Script / Instructions for KodeKloud Engineer Task: Add Apache Response Headers.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Install httpd onto server.
sudo yum install httpd -y

# Update the httpd.conf file to use port 6100.
sudo sed -i 's/Listen 80/Listen 6100/g' /etc/httpd/conf/httpd.conf

# Verify the httpd.conf file is using port 6100.
sudo grep Listen /etc/httpd/conf/httpd.conf

# Start the httpd service.
sudo systemctl start httpd

# Create the file index.html under /var/www/html.
sudo touch /var/www/html/index.html

# Add the following content to the index.html file.
# Welcome to the xFusionCorp Industries!
sudo vi /var/www/html/index.html # Add the content manually using vi and save (i, paste, ESC, :wq)

# Verify the content of the index.html file.
sudo cat /var/www/html/index.html

# Configure apache to use the response headers requested. Run as root.
sudo su -
echo "Header set X-XSS-Protection \"1; mode=block\"" >> /etc/httpd/conf/httpd.conf
echo "Header set X-Frame-Options SAMEORIGIN" >> /etc/httpd/conf/httpd.conf
echo "Header set X-Content-Type-Options nosniff" >> /etc/httpd/conf/httpd.conf
exit

# Restart the httpd service.
sudo systemctl restart httpd

# Verify the response headers are present.
curl -I localhost:6100 # look for the response headers.

