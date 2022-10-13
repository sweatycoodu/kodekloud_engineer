# Instructions for KodeKloud Engineer Task: Create ReplicaSet in Kubernetes Cluster.
# Written by Sam Cole - https://github.com/sweatycoodu/
# As always - give it a go first - use if stuck.

# Create a new ReplicaSet template file called nginx-replicaset.
vi nginx-replicaset.yaml

# Populate the nginx-replicaset.yaml file using the task constraints.
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: nginx-replicaset
  labels:
    app: nginx_app
    type: front-end
spec:
  replicas: 4
  selector:
    matchLabels:
      app: nginx_app
      type: front-end
  template:
    metadata:
      labels:
        app: nginx_app
        type: front-end
    spec:
      containers:
      - name: nginx-container
        image: nginx:latest

# Create the ReplicaSet.
kubectl create -f nginx-replicaset.yaml

# Verify the ReplicaSet has been created.
kubectl get replicaset # Observe 4 pods are desired and 4 pods are ready.

# Verify that the ReplicaSet has taken effect and deployed the pods.
kubectl get pods # Observe 4 pods are running.
