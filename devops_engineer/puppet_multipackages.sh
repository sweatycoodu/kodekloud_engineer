# Instructions for KodeKloud Engineer Task: Puppet Multi-Packages Installation.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck. 

# Switch to root on jump_host.
sudo su

# Create the puppet file.
touch /etc/puppetlabs/code/environments/production/manifests/beta.pp

# Add the packages that are required to the file and target the stapp03 node.
cat <<EOF > /etc/puppetlabs/code/environments/production/manifests/beta.pp
# Define class and packages.
class multi_package_node {
  package { 'vim-enhanced':
    ensure => 'installed',
  }
  package { 'zip':
    ensure => 'installed',
  }
}
# Target stapp03 and default.
node 'stapp03' {
  include multi_package_node
}
node default {
  include multi_package_node
}
EOF

# Apply the changes to the production environment.
puppet apply /etc/puppetlabs/code/environments/production/manifests/beta.pp

# Run the puppet agent on stapp03.
sudo puppet agent -t

# Verify the packages have been installed.
rpm -qa | grep vim-enhanced && rpm -qa | grep zip

# Verify puppet agent service on stapp03.
sudo systemctl status puppet

# Verify puppet server service on jump_host.
systemctl status puppetserver