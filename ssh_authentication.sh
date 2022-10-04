# Script / Instructions for KodeKloud Engineer Task: SSH Authentication.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Setup password-less ssh authentication for user 'thor' on server 'jump_host' to stapp01, stapp02, stapp03.

# Create ssh key pair for user 'thor' on server 'jump_host'.
ssh-keygen -t rsa -b 4096 -C "thor@jump_host"

# Copy public key to stapp01 for tony.
ssh-copy-id -i ~/.ssh/id_rsa.pub tony@stapp01

# Verify password-less ssh authentication is working on stapp01 from jump_host.
ssh tony@stapp01

# Copy public key to stapp02 for steve.
ssh-copy-id -i ~/.ssh/id_rsa.pub steve@stapp02

# Verify password-less ssh authentication is working on stapp02 from jump_host.
ssh steve@stapp02

# Copy public key to stapp03 for banner.
ssh-copy-id -i ~/.ssh/id_rsa.pub banner@stapp03

# Verify password-less ssh authentication is working on stapp03 from jump_host.
ssh banner@stapp03



