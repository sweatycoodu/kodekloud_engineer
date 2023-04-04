# Instructions for KodeKloud Engineer Task: Create Deployments in Kubernetes Cluster.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to the root user.
sudo su

# Create folder and .yml for deployment.
mkdir deployments && cd deployments || exit
touch httpd-deployment.yml

# Edit the .yml file via vi and add the contents of kubernetes_deployment.yml.
vi httpd-deployment.yml

# Exit root user and switch to the deployments directory.
exit
cd deployments || exit

# Create the deployment.
kubectl create -f httpd-deployment.yml

# Check the deployment.
kubectl get deployments
