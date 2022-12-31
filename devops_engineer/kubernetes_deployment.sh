# Setup deployment for Kubernetes Cluster.

# Switch to root user.
sudo su

# Create a new namespace.
kubectl create namespace devops

# Create the directory and file for the kubernetes manifest.
mkdir -p /root/devops_engineer/kubernetes && cd /root/devops_engineer/kubernetes && touch deployment.yaml

# Add the following content to the deployment.yaml file.



