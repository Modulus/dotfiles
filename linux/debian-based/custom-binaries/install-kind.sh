#!/bin/bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.9.0/kind-linux-amd64
clamscan -r ./kind

echo "Do you want to continue? "
read cont
if [[ "$cont" -eq "yes" || "$cont" -eq "y" ]]; then
    echo "Installing"
    chmod +x ./kind
    mv ./kind /usr/local/bin/kind
else
    echo "Do not install"
fi