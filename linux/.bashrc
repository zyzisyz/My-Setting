# -----------------------------------------------------------
# .bashrc
# author: zyziszy
# e-mail: zyziszy@foxmail.com
# note: NULL
# -----------------------------------------------------------


# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# anaconda3
export PATH="/work4/zhangyang/anaconda3/bin:$PATH"

# cuda-9.0
# export PATH=${HOME}/cuda-9.0/bin:$PATH 
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cuda-9.0/lib64/

# jdk8
export JAVA_HOME=$HOME/java/jdk1.8.0_181
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

# ssh
alias wolf07='ssh wolf07'
alias wolf05='ssh wolf05'
alias wolf06='ssh wolf06'

# tensorflow
alias tf='source activate tf'

# pytorch
alias pytorch='source activate pytorch'

# color
: << !
# my rpi color
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# THU cslt lilt's color settings
# enable color support of ls and also add handy aliases
export alias ls='ls --color'
export alias ll='ll -lt --color'

if [ -x /usr/bin/dircolors ]; then
  eval "`dircolors -b`"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi
!