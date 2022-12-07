# Instructions for KodeKloud Engineer Task: Create Pods in Kubernetes Cluster.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create a file called create_pods.yml.
touch create_pods.yml

# Add the contents of create_pods.yml to the file. Refer to yaml folder.
vi create_pods.yml

# Deploy the pod from the created file.
kubectl apply -f create_pods.yml

# Check the status of the pod.
kubectl get pods

# Dive a bit deeper.
kubectl describe pod pod-nginx