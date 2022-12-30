# Instructions for KodeKloud Engineer Task:   Rolling Updates And Rolling Back Deployments in Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to the root user.
sudo su

# Create a new directory for the deployment files.
mkdir httpd-deployment && cd httpd-deployment

# Create a deployment file for the httpd deployment.
touch httpd-deployment.yml

# Populate the file with the data from the .yml file in the repo.
vi httpd-deployment.yml

# Quit root and apply the deployment file.
exit
cd httpd-deployment
kubectl apply -f httpd-deployment.yml

# Check the deployment in the devops namespace.
kubectl get deployment -n devops

