# Instructions for KodeKloud Engineer Task: Troubleshoot Python App on Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Grab the name of the container running the python app.
kubectl get pods -o wide

# Check the logs of the container.
kubectl logs python-deployment-datacenter-5f448c9b8d-hzncs # Failing to pull image.

# Edit the deployment to use the correct image.
kubectl edit deployment python-deployment-datacenter # Correct the typo in the image name.

# Re-check the logs of the container.
kubectl get pods -o wide # Container is now running.

# Check the nodePort of the service.
kubectl get svc python-service-datacenter # NodePort is correct, 32345, port 8080 is not.

# Edit the service to use the correct ports.
kubectl edit svc python-service-datacenter # Port/targetPort needs to be 5000 for flask.

# Check that the app front-end is no working from the GUI button.
