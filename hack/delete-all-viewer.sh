#!/usr/bin/env bash

# NOTE: this will delete ALL viewers under namespace kubeflow-user-example-com
kubectl delete viewers -n kubeflow-user-example-com --all
