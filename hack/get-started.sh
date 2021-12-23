#!/usr/bin/env bash

kubectl port-forward svc/istio-ingressgateway -n istio-system 8080:80 --address 0.0.0.0
