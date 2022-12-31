# Setup deployment for Kubernetes Cluster.

# Switch to root user.
sudo su

# Create a new namespace.
kubectl create namespace devops

# Create a new deployment.
kubectl create deployment devops --image=devops_engineer:latest -n devops



