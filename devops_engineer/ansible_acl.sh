# Instructions for KodeKloud Engineer Task: Managing ACLs Using Ansible.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the playbook file.
touch /home/thor/ansible/playbook.yml

# Edit the playbook file.
vi /home/thor/ansible/playbook.yml

# Change to the ansible directory.
cd /home/thor/ansible || exit

# Run the playbook.
ansible-playbook -i inventory playbook.yml