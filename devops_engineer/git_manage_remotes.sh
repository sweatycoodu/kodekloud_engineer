# Instructions for KodeKloud Engineer Task: Git Manage Remotes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# SSH into ststor01.
ssh natasha@ststor01

# Switch to the root user.
sudo su -

# Change over to the repo directory.
cd /usr/src/kodekloudrepos/apps

# Add the new requested remote.
git remote add dev_apps /opt/xfusioncorp_apps.git

# Copy the /tmp/index.html file to the repo and commit to master.
cp /tmp/index.html .
git add .
git commit -m "Added index.html file."

# Push the changes to the new remote.
git push dev_apps master

# Push again for good measure.
git push

# Check the status of the repo.
git status

# Check the remotes for a successful push.
git remote -v