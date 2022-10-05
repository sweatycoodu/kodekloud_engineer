# Script / Instructions for KodeKloud Engineer Task: Linux Find Command.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Verify the requested .js files can be found in /var/www/html/blog/.
sudo find /var/www/html/blog/ -name "*.js"

# Copy those .js files into the /blog location.
sudo find /var/www/html/blog/ -name "*.js" -exec cp --parent {} /blog \;