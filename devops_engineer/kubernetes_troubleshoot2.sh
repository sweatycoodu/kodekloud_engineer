# Instructions for KodeKloud Engineer Task: Kubernetes Troubleshooting.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Print the contents of the /home/thor/mysql_deployment.yaml file.
cat /home/thor/mysql_deployment.yaml

# Copy the contents of the cat output to the clipboard.
# Do this manually.

# Paste the output into https://validkube.com/
# Use your troubleshooting skills to fix the issues, which are mostly typo's and indentation issues.
# You may need to also attempt to create the deployment to see additional errors.
# Refer to my YAML file if you are really stuck.

# Once your YAML is valid, paste the contents into the /home/thor/mysql_deployment.yaml file, overwriting the existing contents.
vi /home/thor/mysql_deployment.yaml
:%d
# Paste the contents of the clipboard.
# Press ESC, then :wq to save and exit.

# Create the deployment using the /home/thor/mysql_deployment.yaml file.
kubectl create -f /home/thor/mysql_deployment.yml

# Verify the Kubenetes pod status.
kubectl get pods