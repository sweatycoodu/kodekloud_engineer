# Instructions for KodeKloud Engineer Task: Ansible Lineinfile Module.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create playbook.yml and populate with parameters for task.
cat <<EOF > playbook.yml
# Ansible YAML for KodeKloud Engineer Task: Lineinfile Module.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Define parameters for the playbook as per the task requirements.
- name: Install httpd on stapp01
  hosts: stapp01, stapp02, stapp03
  become: true
  tasks:
    - name: Install httpd.
      yum:
        name: httpd
        state: present
        
    - name: Verify the service is running.
      service:
        name: httpd
        state: started
    - name: Delete existing index.html file.
      file:
        path: /var/www/html/index.html
        state: absent
    - name: Populate the index.html file.
      lineinfile:
        path: /var/www/html/index.html
        line: "This is a Nautilus sample file, created using Ansible!"
        create: yes
    - name: Add additional BOF line to the index.html file.
      lineinfile:
        path: /var/www/html/index.html
        line: "Welcome to Nautilus Group!"
        insertbefore: BOF
    - name: Change ownership of the index.html file. Change permissions to 0655.
      file:
        path: /var/www/html/index.html
        owner: apache
        group: apache
        mode: 0655
EOF

# Apply playbook.yml to stapp01, stapp02, stapp03.
ansible-playbook -i inventory playbook.yml

