#!/bin/bash

# Anaconda https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/
# Miniconda https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/

# thu
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --set show_channel_urls yes

####################################################################################

# conda command

# env create: 
# conda create -n env_name python=3.6

# env remove
# conda remove -n env_name --all -y

# env activate: 
# source activate env_name

# env deactivate
# source deactivate env_name

# ls env: 
# conda env list

# version: 
# conda -V

# env share (in target_env)
# conda env export > environment.yml
# conda env create -f environment.yml