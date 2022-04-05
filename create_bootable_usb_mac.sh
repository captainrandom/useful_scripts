#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

iso_file_name=$1
img_file_name=$(echo "${iso_file_name}" | sed s/.iso/.img/g)

# you can find this by running: diskutil list
# an example of this would be "/dev/disk2"
device_path=$2

echo using iso file = "${iso_file_name}" and device = "${device_path}"

hdiutil convert -format UDRW -o "${img_file_name}"  "${iso_file_name}"
mv "${img_file_name}".dmg "${img_file_name}"
sudo dd if="${img_file_name}" of="${device_path}"
