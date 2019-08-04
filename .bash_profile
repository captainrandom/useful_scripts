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

# Spark
export SPARK_HOME=${HOME}/spark-2.4.3-bin-hadoop2.7
export PATH=$PATH:${SPARK_HOME}/bin
export PYSPARK_DRIVER_PYTHON=ipython

# setting java version so 1.8 for spark and flink
export DEFAULT_JAVA_VERSION=1.8
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

alias bfg="java -jar ~/.local/bin/bfg-1.13.0.jar"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/majackson/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/majackson/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/majackson/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/majackson/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# added by Snowflake SnowSQL installer v1.0
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

alias java_home=/usr/libexec/java_home
alias java_versions='/usr/libexec/java_home -V'
