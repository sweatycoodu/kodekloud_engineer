# Instructions for KodeKloud Engineer Task: Update an Existing Deployment in Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Get a list of the existing deployments and services.
kubectl get deployments && kubectl get services

# Update the NodePort on nginx-service to use 32165.
kubectl edit service nginx-service # Make the changes on line 25.

# Update the deployment to add additional replicas and update the nginx image.
kubectl edit deployment nginx-deployment # Make the changes on lines 23 and 41.

# Allow a few minutes for the changes to take effect and then verify the changes.
kubectl get deployments && kubectl get services

# Verify the pods in the default namespace.
kubectl get pods