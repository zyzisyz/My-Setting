# -----------------------------------------------------------
# bash.rc
# author: zyziszy
# e-mail: zyziszy@foxmail.com
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
export PATH=$HOME/cuda-9.0/bin:$PATH 
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cuda-9.0/lib64/

