# Instructions for ACG Lab:
# Building a Kubernetes 1.24 Cluster with kubeadm.

# Perform below on the control plane and on each worker node.

# Create configuration file for containerd.
cat <<EOF | sudo tee /etc/modules-load.d/containerd.conf
overlay
br_netfilter
EOF

# Load modules.
sudo modprobe overlay
sudo modprobe br_netfilter

# Setup system configurations for K8s networking.
cat <<EOF | sudo tee /etc/sysctl.d/99-kubernetes-cri.conf
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
net.bridge.bridge-nf-call-ip6tables = 1
EOF

# Apply the sysctl settings.
sudo sysctl --system

# Install containerd.
sudo apt-get update && sudo apt-get install -y containerd

# Configure containerd.
sudo mkdir -p /etc/containerd

# Configure containerd default configuration.
sudo containerd config default | sudo tee /etc/containerd/config.toml

# Restart and verify containerd.
sudo systemctl restart containerd && sudo systemctl status containerd

# Disable swap.
sudo swapoff -a

# Install dependencies.
sudo apt-get update && sudo apt-get install -y apt-transport-https curl

# Add the GPG key for the official Docker repository to the system.
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Add Kubernetes to the apt sources list.
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

# Update the package database with the Kubernetes packages from the newly added repo.
sudo apt-get update

# Install Kubernetes.
sudo apt-get install -y kubelet kubeadm kubectl

# Hold the version of Kubernetes.
sudo apt-mark hold kubelet kubeadm kubectl

### Initialize the cluster on the control plane node only.
sudo kubeadm init --pod-network-cidr 192.168.0.0/16 --kubernetes-version 1.24.0

# Set kubectl access.
mkdir -p "$HOME/.kube"
sudo cp -i /etc/kubernetes/admin.conf "$HOME/.kube/config"
sudo chown "$(id -u)":"$(id -g)" "$HOME/.kube/config''"

# Test the cluster.
kubectl get nodes

# Install the Calico CNI.
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Verify the cluster.
kubectl get nodes

### Join the worker nodes to the cluster.
kubeadm token create --print-join-command

# Run the join command on each worker node.
sudo kubeadm join ...

# Verify the cluster.
kubectl get nodes
