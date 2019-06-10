#!/bin/bash -ex
USRID=${1}
UEMAIL=${2:-stack@example.com}
UNAME=${3:-"Spinnaker Student"}
cd && git clone https://bitbucket.org/mirantis-training/site.git
cd site && git remote remove origin
git config --global user.email ${UEMAIL}
git config --global user.name ${UNAME}
git tag v1.0
if [ -z "${USRID}" ]; then
  echo "github userid not supplied"
  exit -1
fi
git remote add origin https://github.com/${USRID}/site.git
git push --set-upstream origin master --tags

