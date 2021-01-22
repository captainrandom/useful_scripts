#!/usr/bin/env bash

set -o nounset # exit if you try to use undeclared variables
set -o errexit # exit if a command fails

private_key=$1
encrypted_message=$2
decrypted_message=$3

openssl rsautl -decrypt -inkey "${private_key}" -in "${encrypted_message}" -out "${decrypted_message}"
