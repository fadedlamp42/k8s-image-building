#!/bin/bash
JOBS=$(kubectl -n faded-jobs get jobs -o jsonpath="{.items[*].metadata.name}")
if [ "$JOBS" != "" ]; then
    kubectl delete -n faded-jobs jobs/$JOBS
fi
rm -fv log.txt
