# Instructions for KodeKloud Engineer Task:  Kubernetes Redis Deployment.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create namespace called devops.
kubectl create namespace devops

# Switch to the root user.
sudo su

# Create a new directory for the deployment files.
mkdir redis-deployment && cd redis-deployment

# Create a configuration file for the redis deployment.
touch my-redis.config.yml
vi my-redis.config.yml # Populate the file with the data from the .yml file in the repo.

# Create a deployment file for the redis deployment.
touch redis-deployment.yml
vi redis-deployment.yml # Populate the file with the data from the .yml file in the repo.

# Quit root and apply the configmap and deployment files.
exit
kubectl apply -f my-redis.config.yml -f redis-deployment.yml

# Check container status.
kubectl get pods # Should show 1/1 for the redis container with no issues.

