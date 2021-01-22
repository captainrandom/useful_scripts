#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

os=$1

if [[ ${os} == "mac" ]]; then
    anaconda_url = https://repo.anaconda.com/archive/Anaconda3-2020.11-MacOSX-x86_64.sh
else
    exit -1;
fi

curl ${anaconda_url} -o anaconda.sh
sh anaconda.sh -b
rm anaconda.sh
conda init