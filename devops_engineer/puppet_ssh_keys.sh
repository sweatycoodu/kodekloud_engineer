# Instructions for KodeKloud Engineer Task: Puppet Setup SSH Keys.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.


# Create a keypair for the user thor@jump_host.stratos.xfusioncorp.com.
ssh-keygen -t rsa -b 4096 -C "thor@jump_host.stratos.xfusioncorp.com" -f /home/thor/.ssh/id_rsa

# Ensure thor user has access to the key.
sudo chown thor:thor /home/thor/.ssh/id_rsa

# Add the key to the ssh agent.
eval $(ssh-agent -s)
ssh-add /home/thor/.ssh/id_rsa

# Display the public key.
cat /home/thor/.ssh/id_rsa.pub

# Populate the file using the puppet file in the repo.
# Remember to update the public key with the one you generated and displayed above.
sudo vi /etc/puppetlabs/code/environments/production/manifests/blog.pp

# Run the puppet agent on stapp01.
sudo puppet agent -t

# Check that you are able to ssh into stapp01 from jump_host using the thor user.
# Repeat agent test and ssh test on stapp02 and stapp03.

