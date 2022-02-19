#!/bin/bash

print_usage() {
    echo "Usage: push.sh [node_image_tag]"
}

NODE_TAG="$1"

# printenv NODE_TAG

if [ ! -z "${NODE_TAG}" ]; then
    if [ ${NODE_TAG} == "--help" ]; then
        print_usage
        exit 0
    fi
else
    NODE_TAG="16"
fi

docker push mikison/nodendocker:"${NODE_TAG}"