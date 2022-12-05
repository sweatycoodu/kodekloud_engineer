# Instructions for KodeKloud Engineer Task: Print Environment Variables.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the yaml file that will be used to create the pod.
touch env-pod.yml

# Edit the yaml file to add the pod definition. Refer to my print_env_variables.yml file for the full definition.
vi env-pod.yaml

# Create the pod.
kubectl create -f env-pod.yml

# Check the pod is running.
kubectl get pods

# Check the logs.
kubectl logs print-envars-greeting

# Note that the pod will exist in a completed state with exit code 0 - this is normal.