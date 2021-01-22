#!/usr/bin/env bash

set -o nounset # exit if you try to use undeclared variables
set -o errexit # exit if a command fails

public_key=$1
file_to_encrypt=$2
encrypted_file=$3

openssl rsautl -encrypt -pubin -inkey "${public_key}" -ssl -in "${file_to_encrypt}" -out "${encrypted_file}"
