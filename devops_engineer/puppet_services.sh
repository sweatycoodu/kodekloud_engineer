# Instructions for KodeKloud Engineer Task: Manage Puppet Services.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Create the file official.pp under /etc/puppetlabs/code/environments/production/manifests
touch /etc/puppetlabs/code/environments/production/manifests/official.pp

# Edit the file official.pp and add the code contained in official.pp file.
vi /etc/puppetlabs/code/environments/production/manifests/official.pp

# ssh into stapp01 and run the puppet agent test.
ssh tony@stapp01
sudo puppet agent -t

# Verify that httpd is running on stapp01.
systemctl status httpd




