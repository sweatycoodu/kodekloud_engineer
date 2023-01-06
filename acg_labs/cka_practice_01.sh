# Instructions for ACG Lab:
# Certified Kubernetes Administrator (CKA) Practice Exam: Part 1

# Determine the number of nodes that are ready to run normal workloads.
kubectl get nodes
echo 2 > /k8s/0001/count.txt

# In the backend namespace, check the log for the proc container in the data-handler Pod.
kubectl logs -n backend data-handler -c proc | grep "ERROR" > /k8s/0002/error.txt

# Analyse the pod in the web namespace with the label app=auth that are consuming the most CPU usage.
# Output the name of the pod to a file.
kubectl top pod -n web -l app=auth --sort-by=cpu | head -n 2 | tail -n 1 | awk '{print $1}' > /k8s/0003/cpu-pod.txt
