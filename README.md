# k8s-image-building
Small project to build a Docker image and then run it on a cluster

# Usage
`make` or `make init`: make scripts executable, mount src folder into node, and setup environment variables

`make test`: build image, create k8s namespace and job, monitor job (ctrl+c once finished), then show output command on image 
