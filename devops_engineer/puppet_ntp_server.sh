# Instructions for KodeKloud Engineer Task: Puppet Setup NTP Server.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Create the puppet configuration file.
touch /etc/puppetlabs/code/environments/production/manifests/cluster.pp

# Add the details of the custom ntp class into the file.
cat << EOF > /etc/puppetlabs/code/environments/production/manifests/cluster.pp
class ntpconfig {
  package { 'ntp':
    ensure => installed,
  }
  file { '/etc/ntp.conf':
    ensure  => file,
    content => 'server 2.cn.pool.ntp.org iburst',
  }
}
node default {
  include ntpconfig
}
node 'stapp02' {
  include ntpconfig
}
EOF

# Run the puppet agent test on stapp02 and ensure no errors.
sudo puppet agent -t

# Apply the puppet configuration file to stapp02.
puppet apply /etc/puppetlabs/code/environments/production/manifests/cluster.pp

# Check the ntp configuration file on stapp02 and ensure it has been updated.
cat /etc/ntp.conf

# Verify the puppet server service is running on the jump host.
systemctl status puppetserver

# Verify the puppet agent service is running on stapp02.
systemctl status puppet