#!/usr/bin/env bash

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64 && \
    chmod +x ./kind && \
    mv ./kind /usr/local/bin/kind

# get kubectl=1.20.7
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.20.7/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl

# create a cluster with k8s version 1.20.7
kind create cluster --image=kindest/node:v1.20.7
