# Instructions for KodeKloud Engineer Task: Git Revert Some Changes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# SSH into Storage Server.
ssh natasha@ststor01

# Revert the last git change on the /usr/src/kodekloudrepos/cluster repo.
cd /usr/src/kodekloudrepos/cluster
git revert HEAD # Add revert message specified in task.

# Confirm the change was reverted.
git log

# Exit SSH session.
exit
