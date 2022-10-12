# Instructions for KodeKloud Engineer Task: Fix issue with PhpFpm Application Deployed on Kubernetes.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Verify the Kubenetes pod is running.
kubectl get pods

# Check the status of nginx-service.
kubectl get svc # Port number should be 80.

# Change the port of the nginx-service to 80 as per the requirements.
kubectl edit service nginx-service # Update the port and targetPort to 80.

# Update the configmap 'nginx-config' to include the index.php file.
kubectl edit configmap nginx-config # Add the index.php file to the configmap.

# Restart the deployment 'nginx-phpfpm-dp' to apply the changes.
kubectl rollout restart deployment nginx-phpfpm-dp

# Copy the /tmp/index.php file to our Kubernetes deployment 'nginx-phpfpm-dp'. Verify the file has been copied.
kubectl cp /tmp/index.php nginx-phpfpm-dp-5b648d7595-p98sm:/var/www/html/index.php && kubectl exec -it nginx-phpfpm-dp-5b648d7595-p98sm -- ls -la /var/www/html/

# Verify if port 80 is accessible now that the index.php file has been copied.
# Open Port 30008 on the jump_host from UI.
# Observe php info page.