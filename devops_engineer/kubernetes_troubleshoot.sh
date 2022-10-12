# Instructions for KodeKloud Engineer Task: Troubleshoot Deployment issues in Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Verify the Kubenetes pod status.
kubectl get pods # Observe ContainerCreating status.

# Pull the logs for the pod.
kubectl logs -f redis-deployment-76cc9c56f-k8ksl # Observe that the container is waiting to start.

# Check the status of the containers in redis-deployment-76cc9c56f-k8ksl.
kubectl describe pod redis-deployment-76cc9c56f-k8ksl # Observe a volume mount error due to a typo in the deployment configuration.

# Edit the deployment configuration to correct the typo.
kubectl edit deployment redis-deployment # Correct the typo in ths file. (Line 65)

# Verify the Kubenetes pod status.
kubectl get pods # Observe ErrImagePull status.

# Check the status of the containers in redis-deployment-76cc9c56f-k8ksl.
kubectl describe pod redis-deployment-86dc9c6fdb-zc4th # Observe a image pull error due to a typo in the image name redis-alpin - Two pods are having issues.

# Edit the deployment configuration to correct the typo.
kubectl edit deployment redis-deployment # Correct the typo in the image name. (Line 41 - redis-alpine is the correct name)

# Observe the status of the pods is now Running.
kubectl get pods
