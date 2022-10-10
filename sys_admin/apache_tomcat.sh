# Instructions for KodeKloud Engineer Task: Install & Configure Apache Tomcat Server.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Install the Apache Tomcat package.
yum install -y tomcat

# Configure port 8081 for Tomcat.
sed -i 's/8080/8081/g' /etc/tomcat/server.xml

# Ensure the port has been changed.
grep 8081 /etc/tomcat/server.xml

# Start the Tomcat service and enable it on boot.
systemctl start tomcat && systemctl enable tomcat

# SCP the ROOT.war file to the server - run on jump_host
sudo scp -i ~/.ssh/id_rsa /tmp/ROOT.war steve@stapp02:/home/steve

# Copy the ROOT.war file to the Tomcat webapps directory.
cp /home/steve/ROOT.war /var/lib/tomcat/webapps/

# Restart the Tomcat service.
systemctl restart tomcat

# Confirm the webapp is running on localhost:8081
curl localhost:8081