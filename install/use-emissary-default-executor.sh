#!/usr/bin/env bash

kubectl patch configmap workflow-controller-configmap --patch {\"data\":{\"containerRuntimeExecutor\":\"emissary\"}} -n kubeflow
kubectl rollout restart deployment/workflow-controller -n kubeflow
