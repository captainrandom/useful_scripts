# utf bindings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# brew path
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/unzip/bin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="$PATH:/Users/$(whoami)/.local/bin"

# adding local bin
export PATH=$PATH:${HOME}/.local/bin

export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

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
export SPARK_HOME=${HOME}/spark-2.4.3-bin-hadoop2.7
export PATH=$PATH:${SPARK_HOME}/bin
export PYSPARK_DRIVER_PYTHON=ipython

# setting java version so 1.8 for spark and flink
export DEFAULT_JAVA_VERSION=1.8 # 12.0.1
export JAVA_HOME=$(/usr/libexec/java_home -v ${DEFAULT_JAVA_VERSION})

alias bfg="java -jar ~/.local/bin/bfg-latest.jar"

# added by Snowflake SnowSQL installer v1.0
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# java home and version choosing (probably for mac)
alias java_home=/usr/libexec/java_home
alias java_versions='/usr/libexec/java_home -V'

# AWS 2.0 CLI
export AWS_PAGER=""

function urlencode() {
    python -c "import sys, urllib.parse; print(urllib.parse.quote_plus(sys.argv[1]))" ${1}
}

export PATH="$HOME/.cargo/bin:$PATH"

# kubernetes commands
kubedash() {
    kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep eks-admin | awk '{print $1}')
}
