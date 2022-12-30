# Instructions for KodeKloud Engineer Task: Rolling Updates And Rolling Back Deployments in Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the namespace.
kubectl create namespace datacenter

# Switch to the root user.
sudo su

# Create a new directory for the deployment files.
mkdir httpd-deployment && cd httpd-deployment || exit

# Create a deployment file for the httpd deployment.
touch httpd-deployment.yml

# Populate the file with the data from the .yml file in the repo.
vi httpd-deployment.yml

# Quit root and apply the deployment file.
exit
cd httpd-deployment || exit
kubectl apply -f httpd-deployment.yml

# Check the deployment in the datacenter namespace.
kubectl get deployment -n datacenter

# Upgrade the deployment to version 2.4.43 using a rolling update.
kubectl set image deployment/httpd-deploy httpd=httpd:2.4.43 -n datacenter

# Check the rollout status.
kubectl rollout status deployment/httpd-deploy -n datacenter

# Rollback the deployment to version 2.4.27.
kubectl rollout undo deployment/httpd-deploy -n datacenter

# Check the nodeport of the service is correct.
kubectl get svc -n datacenter
