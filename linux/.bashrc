# -----------------------------------------------------------
# .bashrc
# author: zyziszy
# e-mail: zyziszy@foxmail.com
# note: NULL
# -----------------------------------------------------------

# color
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# anaconda3
export PATH="/work4/zhangyang/anaconda3/bin:$PATH"

# cuda-9.0
# export PATH=${HOME}/cuda-9.0/bin:$PATH 
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cuda-9.0/lib64/

# cuda-8.0
export PATH=/work4/zhangsy/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/lib64/:/work4/zhangsy/cuda-8.0/lib64:/work4/zhangsy/cuda-8.0/lib:/nfs/disk/work/users/xingchao/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# jdk8
export JAVA_HOME=$HOME/java/jdk1.8.0_181
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar