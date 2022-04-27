set -o errexit
set -o pipefail
set -o nounset

os=$1

if [[ ${os} == "mac" ]]; then
    mambaforge_url=https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-x86_64.sh
else
    exit -1;
fi

curl -L ${mambaforge_url} -o mambaforge.sh
chmod +x mambaforge.sh
sh mambaforge.sh -b
rm mambaforge.sh
~/mambaforge/bin/mamba init zsh