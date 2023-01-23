# Instructions for KodeKloud Engineer Task: Kubernetes Time Check Pod.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Switch to root user.
sudo su

# Create yml file for pod.
touch timecheck.yml

# Edit file with the contents of kubernetes_timecheck.yml.
vi timecheck.yml

# Exit root.
exit

# Create namespace 'devops'.
kubectl create namespace devops


# Apply the yml file.
kubectl apply -f time-check.yml

# Confirm that the ConfigMap was created.
kubectl get configmap -n devops

# Verify the pod is running.
kubectl get pods -n devops

# Display output of /opt/devops/time/ from the pod to confirm command is OK.
kubectl exec -it time-check -n devops -- ls /opt/security/time/
kubectl exec -it time-check -n devops -- cat /opt/security/time/time-check.log
