# Script / Instructions for KodeKloud Engineer Task: Linux User Files.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Verify that the files can be found belonging to the user 'anita'.
sudo find /home/usersdata -user anita

# Find and copy all files owned by the user 'anita' inside /home/usersdata to /blog.
# Note, the --parents flag is used to copy the directory structure.
sudo find /home/usersdata -user anita -exec cp --parents {} /blog \;
