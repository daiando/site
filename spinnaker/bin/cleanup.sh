#!/bin/sh

test -x /usr/local/bin/minikube && (minikube delete ; rm -rf /usr/local/bin/minikube)

test -x /usr/local/bin/helm && rm -rf /usr/local/bin/helm

apt purge -y docker-ce
