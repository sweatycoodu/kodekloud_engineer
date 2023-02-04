# Instructions for KodeKloud Engineer Task: Managing Jinja2 Templates Using Ansible.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Edit playbook.yml and add the host.
cd ansible && vi playbook.yml

# Create the jinja2 template.
vi /home/thor/ansible/role/httpd/templates/index.html.j2
# Add text to the template from .yml file.

# Edit httpd tasks file.
vi /home/thor/ansible/role/httpd/tasks/main.yml
# Add code from .yml file.

# Run the playbook.
ansible-playbook  -i inventory playbook.yml

# After ensuring no errors, validate the copied template.
ansible stapp03 -a "cat /var/www/html/index.html" -i inventory
# Replace with task server name.