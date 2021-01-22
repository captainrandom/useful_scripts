#!/usr/bin/env bash

set -o nounset # exit if you try to use undeclared variables
set -o errexit # exit if a command fails

key_file_name=$1
ssh-keygen -t rsa -b 4096 -m PEM -f "${key_file_name}"
