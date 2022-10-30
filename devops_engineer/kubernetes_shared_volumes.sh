# Instructions for KodeKloud Engineer Task: Kubernetes Shared Volumes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the yml file for the pod.
touch shared_volumes.yml

# Add the yaml to the file and save.
# Refer to my github for the yaml file.

# Deploy the template.
kubectl apply -f shared_volumes.yml

# Verify the deployment has been successful.
kubectl get pods

# Exec into the first container (defaults to first container).
kubectl exec -it volume-share-xfusion -- /bin/bash

# Create the test file and add some text.
touch /tmp/beta/beta.txt && echo "This is a test file" > /tmp/beta/beta.txt && cat /tmp/beta/beta.txt

# Exit the container.
exit

# Verify that the test file exists in the second container.
kubectl exec -it volume-share-xfusion -c volume-container-xfusion2 -- /bin/bash
cat /tmp/apps/beta.txt

# Exit the container.
exit