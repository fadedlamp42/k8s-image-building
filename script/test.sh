#!/bin/bash
kubectl get jobs -w -n faded-jobs
kubectl logs -n faded-jobs \
    pod/$(kubectl get pods -n faded-jobs -o jsonpath="{.items[0].metadata.name}") > log.txt
cat log.txt
