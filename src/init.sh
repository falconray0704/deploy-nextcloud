#!/bin/bash

set -o nounset
set -o errexit
# trace each command execute, same as `bash -v myscripts.sh`
#set -o verbose
# trace each command execute with attachment infomations, same as `bash -x myscripts.sh`
#set -o xtrace

#set -o
set -e
#set -x

source .env

mkdir -p ${SERVICE_DATA_ROOT_PATH}
pushd ${SERVICE_DATA_ROOT_PATH}
mkdir -p db nextcloud
popd

cp -a secret_files ${SERVICE_DATA_ROOT_PATH}/secrets

tree -a ${SERVICE_DATA_ROOT_PATH}

