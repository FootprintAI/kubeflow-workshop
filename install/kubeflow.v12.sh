#!/usr/bin/env bash
# NOTE: this installation is DEPRECATED, please use kubeflow.v13.sh instead.
# and there is no upgradation documentation on kubeflow, as it involved pvc/crd resources.
# so the current suggestion is to backup all data and install new version instead.

# run as root

apt-get update
apt-get install -y wget

# preprare env
KUBEFLOW_ROOT=/root/kubeflow/v1.2
KF_NAME=my-kubeflow
KF_DIR=${KUBEFLOW_ROOT}/${KF_NAME}

mkdir -p $KF_DIR

wget https://github.com/kubeflow/kfctl/releases/download/v1.2.0/kfctl_v1.2.0-0-gbc038f9_linux.tar.gz && \
tar -xzvf kfctl_v1.2.0-0-gbc038f9_linux.tar.gz && \
chmod +x kfctl && \
mv kfctl /usr/local/bin/

cd $KF_DIR && \
    mkdir kfctl_k8s_istio.v1.2.0 && \
    cd kfctl_k8s_istio.v1.2.0 && \
    kfctl apply -V -f https://raw.githubusercontent.com/kubeflow/manifests/master/distributions/kfdef/kfctl_k8s_istio.v1.2.0.yaml

cd $KF_DIR && \
    mkdir kfctl_istio_dex.v1.2.0 && \
    cd kfctl_istio_dex.v1.2.0 && \
    kfctl apply -V -f https://raw.githubusercontent.com/kubeflow/manifests/master/distributions/kfdef/kfctl_istio_dex.v1.2.0.yaml
