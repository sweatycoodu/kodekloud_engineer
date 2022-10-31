# Instructions for KodeKloud Engineer Task: Init containers in Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the yaml file for the deployment.
touch init_containers.yaml

# Copy the contents of the file into the yaml file.
# Refer to my github for the contents of the file.

# Deploy the template.
kubectl apply -f init_containers.yaml

# Check the status of the deployment.
kubectl get pods

# Check the logs of the pod and ensure specs are correct.
kubectl logs ic-deploy-nautilus-6d4d6d984c-7xvzx