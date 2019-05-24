#!/bin/bash -e
mkdir -p ~/helm
pushd ~/helm
curl -s -o get_helm.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get
bash ./get_helm.sh --version v2.7.2
popd
helm init
echo 'source <(helm completion bash)' >> ~/.profile
