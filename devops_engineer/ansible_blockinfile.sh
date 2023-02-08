# Instructions for KodeKloud Engineer Task: Ansible Blockinfile Module.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the index.html file.
vi /home/thor/ansible/playbook.yml # Refer to ansible_blockinfile.yml

# Change directory.
cd /home/thor/ansible

# Run the playbook.
ansible-playbook -i inventory playbook.yml

# Check the index.html file.
ssh tony@stapp01
cat /var/www/html/index.html # Confirm the file has been updated with task text.