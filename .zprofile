# utf bindings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# GNU
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$(brew --prefix)/opt/gnu-indent/libexec/gnubin:$PATH"

# MANPATH
export MANPATH="$(brew --prefix)/opt/coreutils/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/findutils/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/gnu-tar/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/gnu-sed/libexec/gnuman:MANPATH"
export MANPATH="$(brew --prefix)/opt/gnu-indent/libexec/gnuman:$MANPATH"

export PATH="$PATH:/usr/local/texlive/2021/bin/universal-darwin"

# brew path
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/unzip/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="$PATH:/Users/$(whoami)/.local/bin"
export PATH="/usr/local/sbin:$PATH"

# mysql-client
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/mysql-client/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/mysql-client/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql-client/lib/pkgconfig"


# node 16 (brew installation)
export PATH="/usr/local/opt/node@16/bin:$PATH"
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/node@16/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/node@16/include"

# flutter
export PATH="$PATH:${HOME}/flutter/bin"

# solana tools (cli)
export PATH="/Users/markjackson/.local/share/solana/install/active_release/bin:$PATH"

# adding local bin
export PATH=$PATH:${HOME}/.local/bin

export LDFLAGS="${LDFLAGS} -L/usr/local/opt/openssl/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/openssl/include"

# for airflow
export AIRFLOW_GPL_UNIDECODE=yes
export AIRFLOW_HOME=~/airflow

# GO Paths
export GOPATH=$HOME/go
# export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
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
export DEFAULT_JAVA_VERSION=16.0.1
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


alias bfg="java -jar ~/.local/bin/bfg-latest.jar"

# posgres
alias pg_start="launchctl load ~/Library/LaunchAgents"
alias pg_stop="launchctl unload ~/Library/LaunchAgents"
