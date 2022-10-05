# Script / Instructions for KodeKloud Engineer Task: SELinux Install.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Install the required packages for selinux.
sudo yum install policycoreutils-python -y

# Install the selinux packages.
sudo yum install selinux-policy selinux-policy-targeted libselinux-utils setroubleshoot-server -y

# Verify the selinux packages have been installed.
sudo rpm -qa | grep selinux

# Disable the selinux as per the security team's request.
sudo setenforce 0

# Verify the selinux service is disabled from the utility.
sudo getenforce

# Disable the selinux service on boot via the config file.
sudo sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config

# Verify the above changes have been made to the config file.
sudo grep SELINUX /etc/selinux/config