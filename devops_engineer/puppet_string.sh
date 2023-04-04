# Create beta.pp under /etc/puppetlabs/code/environments/production/manifests
sudo touch /etc/puppetlabs/code/environments/production/manifests/beta.pp

# Use file_line to replace 'Welcome to Nautilus Industries!' with 'Welcome to xFusionCorp Industries!'
# Add the following to beta.pp:
file_line { 'welcome':
  ensure => present,
  path   => '/opt/security/beta.txt',
  line   => 'Welcome to xFusionCorp Industries!',
  match  => 'Welcome to Nautilus Industries!',
}

vi /etc/puppetlabs/code/environments/production/manifests/beta.pp

# Run puppet agent on stapp02.
sudo puppet agent -t

# Check the contents of /opt/security/beta.txt on stapp02.
cat /opt/security/beta.txt