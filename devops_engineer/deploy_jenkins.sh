# Instructions for KodeKloud Engineer Task: Deploy Jenkins on Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create the namespace for jenkins.
kubectl create namespace jenkins

# Create the YAML file for the jenkins deployment.
touch jenkins-deployment.yaml

# Add the details of the jenkins deployment into the file.
vi jenkins-deployment.yaml # Refer to my YAML file for the details if stuck.

# Check that the yml file has been populated correctly.
cat jenkins-deployment.yaml

# Create the jenkins deployment.
kubectl create -f jenkins-deployment.yaml

# Verify the jenkins deployment.
kubectl get deployments -n jenkins

# Verify the pods in the jenkins namespace.
kubectl get pods -n jenkins

# Verify the jenkins service.
kubectl get services -n jenkins

# Attempt to access the jenkins service from the UI.
# You will see the login page for jenkins.