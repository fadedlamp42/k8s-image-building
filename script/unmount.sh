#!/bin/bash
ID=$(ps | grep minikube | cut -d" " -f2)
echo $ID
if [ "$ID" != "" ]; then
    kill $ID
    sleep 3
    echo "succesful unmount"
else
    echo "minikube user process not found"
fi
