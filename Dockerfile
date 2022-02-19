ARG node_ver=16

FROM node:${node_ver}

RUN apt-get update && apt-get install docker.io -y
