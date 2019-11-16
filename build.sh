#!/bin/bash

docker build -t tundraray/simple-node-js-server:latest . && \
docker build -t tundraray/simple-dotnet-server:latest -f dotnet.Dockerfile . && \
docker push tundraray/simple-node-js-server:latest && \
docker push tundraray/simple-dotnet-server:latest