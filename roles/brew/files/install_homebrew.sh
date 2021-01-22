#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"