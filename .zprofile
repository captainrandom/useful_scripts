# utf bindings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# GNU
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-indent/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/libtool/libexec/gnubin:$PATH"
# MANPATH
export MANPATH="$(brew --prefix)/opt/coreutils/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/findutils/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/gnu-tar/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/gnu-sed/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/gnu-indent/libexec/gnuman:$MANPATH"

# brew path
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/unzip/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="$PATH:/Users/$(whoami)/.local/bin"
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# For compilers to find readline
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"

# For pkg-config to find readline
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

# For compilers to find zlib
#export LDFLAGS="-L/usr/local/opt/zlib/lib"
#export CPPFLAGS="-I/usr/local/opt/zlib/include"

# For pkg-config to find zlib
#export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"

# krew path
export PATH="${PATH}:${HOME}/.krew/bin"

# istio path
export PATH="${PATH}:/Users/markjackson/istio-1.14.1/bin"

export PATH="/usr/local/opt/sqlite/bin:$PATH"

# For compilers to find sqlite
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"

# For pkg-config to find sqlite
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"

# zlib
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/zlib/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig:${PKG_CONFIG_PATH}"

# mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/mysql-client/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/mysql-client/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql-client/lib/pkgconfig"

# mysql-client m1 mac only
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/mysql-client/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/mysql-client/include"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:/opt/homebrew/opt/mysql-client/lib/pkgconfig"

# node 16 (brew installation)
export PATH="/usr/local/opt/node@16/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/node@16/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/node@16/include"
source $(brew --prefix nvm)/nvm.sh

# bison
export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/bison/lib"

# flex
export PATH="/opt/homebrew/opt/flex/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/flex/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/flex/include"

# flutter
export PATH="$PATH:${HOME}/flutter/bin"

# solana tools (cli)
export PATH="/Users/markjackson/.local/share/solana/install/active_release/bin:$PATH"

# adding local bin
export PATH=$PATH:${HOME}/.local/bin

export LDFLAGS="${LDFLAGS} -L/usr/local/opt/openssl/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/openssl/include"
export LDFLAGS="${LDFLAGS} -L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="${CPPFLAGS} -I/opt/homebrew/opt/openssl@3/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig:${PKG_CONFIG_PATH}"

# for airflow
export AIRFLOW_GPL_UNIDECODE=yes
export AIRFLOW_HOME=~/airflow

# GO Paths
export GOPATH=$HOME/go
# export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOPATH/bin/darwin_arm64
# export PATH=$PATH:$GOROOT/bin

# add julia to the path
export PATH=$PATH:/Applications/Julia-1.1.app/Contents/Resources/julia/bin

# Swift
export TOOLCHAINS=swift

# Spark
export SPARK_VERSION=3.1.2
export SPARK_HOME=${HOME}/spark-${SPARK_VERSION}-bin-hadoop3.2
export PATH=$PATH:${SPARK_HOME}/bin
export PYSPARK_DRIVER_PYTHON=ipython

# setting java version so 1.8 for spark and flink
#export DEFAULT_JAVA_VERSION=1.8
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export DEFAULT_JAVA_VERSION=19.0.1
export JAVA_HOME=$(/usr/libexec/java_home -v ${DEFAULT_JAVA_VERSION})
update_java_version() {
    export JAVA_HOME=$(/usr/libexec/java_home -v "${1}")
}

# java home and version choosing (probably for mac)
alias java_home=/usr/libexec/java_home
alias java_versions='/usr/libexec/java_home -V'

# .Net
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT

function download_dot_net() {
	DOTNET_FILE=dotnet-sdk-5.0.102-linux-x64.tar.gz
	mkdir -p "$DOTNET_ROOT" && tar zxf "$DOTNET_FILE" -C "$DOTNET_ROOT"
}

# snowflake odbc
PATH=$PATH:"/Library/Application Support/iODBC/bin"

# AWS 2.0 CLI
export AWS_PAGER=""

function urlencode() {
    python -c "import sys, urllib.parse; print(urllib.parse.quote_plus(sys.argv[1]))" ${1}
}

source "$HOME/.cargo/env"

# kubernetes commands
kubedash() {
    kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
}

# Aliases
alias cdproj="cd ~/Documents/projects"

# aws-cdk aliases
## runs an npm script via lerna for a the current module
alias lr='lerna run --stream --scope $(node -p "require(\"./package.json\").name")'

## runs "yarn build" (build + test) for the current module
alias lb='lr build'
alias lt='lr test'

## runs "yarn watch" for the current module (recommended to run in a separate terminal session):
alias lw='lr watch'

# brew for x86 & m1 macs
alias brew86="arch -x86_64 /usr/local/bin/brew"
alias brewArm="/opt/homebrew/bin/brew"
alias brewUpgrade="/opt/homebrew/bin/brew update && arch -x86_64 /usr/local/bin/brew update && /opt/homebrew/bin/brew upgrade && arch -x86_64 /usr/local/bin/brew upgrade"

alias bfg="java -jar ~/.local/bin/bfg-latest.jar"

# posgres
alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# pyenv
#eval "$(pyenv init --path)"
#alias pyenv86="arch -x86_64 pyenv"

