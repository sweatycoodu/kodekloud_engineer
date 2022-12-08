# Instructions for KodeKloud Engineer Task: Git Setup From Scratch.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# SSH into storage server.
ssh natasha@ststor01

Switch to root.
sudo su -

# Install git.
yum install git -y

# Configure git.
git config --global user.name "xFusionCorp" && git config --global user.email "a@xf.corp"

# Create a bare repository.
mkdir /opt/news.git && cd /opt/news.git && git init --bare

# Remove existing update hook.
rm /opt/news.git/hooks/update

# Copy our update hook to bare repository.
cp /tmp/update /opt/news.git/hooks/ && ls -l /opt/news.git/hooks/

# Clone the bare repository.
cd /opt && git clone /opt/news.git /usr/src/kodekloudrepos/news

# Switch to the cloned repository.
cd /usr/src/kodekloudrepos/news || exit

# Create new branch xfusioncorp_news.
git checkout -b xfusioncorp_news

# Copy readme.md to the new branch. Commit the file.
cp /tmp/readme.md /usr/src/kodekloudrepos/news/readme.md && git add . && git commit -m "Added readme.md"

# Push branch to remote.
git push origin xfusioncorp_news

# Create a master branch from xfusioncorp_news branch.
git fetch origin xfusioncorp_news:master && git checkout master

# Confirm that master is unable to be pushed to.
git push origin master # hook declined message.


