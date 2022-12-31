# Setup deployment for Kubernetes Cluster.

# Switch to root user.
sudo su

# Create a new namespace.
kubectl create namespace devops

# Create the directory and file for the kubernetes manifest.
mkdir -p /root/devops_engineer/kubernetes && cd /root/devops_engineer/kubernetes || exit
touch deployment.yaml

# Edit the deployment.yaml file using the content from the GitHub repository yaml.
vi deployment.yaml



