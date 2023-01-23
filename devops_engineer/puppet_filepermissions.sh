# Instructions for KodeKloud Engineer Task: Puppet Setup File Permissions.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck. 

# Create puppet manifest 'games' under /etc/puppetlabs/code/environments/production/manifests
sudo touch /etc/puppetlabs/code/environments/production/manifests/games.pp

# Edit the file and populate from file_permissions.pp
sudo vi /etc/puppetlabs/code/environments/production/manifests/games.pp

# SSH into the node.
ssh steve@stapp02

# Run the puppet agent.
sudo puppet agent -t

# Check the file permissions.
ls -l /opt/devops/beta.txt

# Check the contents of the file.
cat /opt/devops/beta.txt
