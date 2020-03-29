#!/bin/bash
kubectl describe -n faded-jobs pods/$(kubectl get pods -n faded-jobs -o jsonpath="{.items[0].metadata.name}")
