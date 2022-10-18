# Instructions for KodeKloud Engineer Task: Git Install and Create Repository.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# SSH into ststor01.
ssh natasha@ststor01

# Switch to the root user.
sudo su -

# Install Git.
yum install git -y

# Create and init repository called /opt/media.git
# Init should not be bare.

# Create the directory.
mkdir /opt/media.git

# Change to the directory.
cd /opt/media.git

# Init the repository.
git init

# Create a sample README.md file.
touch README.md