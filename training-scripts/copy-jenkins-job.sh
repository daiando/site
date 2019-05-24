#!/bin/sh

cp -r ~/spin-install/jenkins_jobs/* `kubectl -n spinnaker get pv -o jsonpath='{.items[?(@.spec.claimRef.name == "demo-jenkins")].spec.hostPath.path}'/jobs`
