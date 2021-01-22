#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

iso_file_name=$1
img_file_name=$(echo "${iso_file_name}" | sed s/.iso/.img/g)

# you can find this by running: diskutil list
# an example of this would be "disk2"
device_name=$2

echo using iso file = "${iso_file_name}" and device = /dev/"${device_name}"

hdiutil convert -format UDRW -o "${img_file_name}"  "${iso_file_name}"
mv "${img_file_name}".dmg "${img_file_name}"
sudo dd if="${img_file_name}" of=/dev/"${device_name}"
