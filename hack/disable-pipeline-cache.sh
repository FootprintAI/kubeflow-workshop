#!/usr/bin/env bash

# disable pipeline cache if needed

kubectl patch mutatingwebhookconfiguration cache-webhook-kubeflow --type='json' -p='[{"op":"replace", "path": "/webhooks/0/rules/0/operations/0", "value": "DELETE"}]'