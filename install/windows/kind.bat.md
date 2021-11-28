
curl.exe -Lo kind.exe https://kind.sigs.k8s.io/dl/v0.11.1/kind-windows-amd64

# create a cluster with k8s version 1.20.7
kind.exe create cluster --image=kindest/node:v1.20.7
