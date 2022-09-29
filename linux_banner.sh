# Script / Instructions for KodeKloud Engineer Task: Linux Banner.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Transfer /home/thor/nautilus_banner to home directory of tony on stapp01.
sudo scp /home/thor/nautilus_banner tony@stapp01:/home/tony/

# Transfer /home/thor/nautilus_banner to home directory of steve on stapp02.
sudo scp /home/thor/nautilus_banner steve@stapp02:/home/steve/

# Transfer /home/thor/nautilus_banner to home directory of banner on stapp03.
sudo scp /home/thor/nautilus_banner banner@stapp03:/home/banner/

# Transfer /home/thor/nautilus_banner to home directory of peter on stdb01.
sudo yum -y install openssh-clients # Install openssh-clients as it is not installed by default. Run on stdb01.
sudo scp /home/thor/nautilus_banner peter@stdb01:/home/peter/

# Change motd on the servers - run on each server, change username as required.
sudo mv /home/steve/nautilus_banner /etc/motd

# Verify the banner is in place - run on each server.
cat /etc/motd