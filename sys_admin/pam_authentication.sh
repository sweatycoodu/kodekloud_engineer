# Script / Instructions for KodeKloud Engineer Task: PAM Authentication for Apache.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Install the PAM packages we need for this task.
yum --enablerepo=epel -y install mod_authnz_external pwauth

# Edit the authnz_external.conf file.
vi /etc/httpd/conf.d/authnz_external.conf

# Add the following to the file.
<Location /protected>
    AuthType Basic
    AuthName "PAM Authentication"
    AuthBasicProvider external
    AuthExternal pwauth
    require valid-user
</Location>

# Restart httpd.
systemctl restart httpd

# Check that the protected directory is working.
curl -u ravi http://localhost:8080/protected # Use password from task.

# Expected output:
# This is a KodeKloud protected directory.
