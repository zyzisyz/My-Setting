# MY-Setting

back up my personal settings in this repo.

## Git command

```bash
# init
git init
git config --global user.name 'zyzisyz'
git config --global user.email zyziszy@foxmail.com

# git pull = git fetch + git merge
git pull

# commit
git checkout
git add ${filename}
git commit -m ${message}

# git remote show origin
git push origin master
```

## vimrc

```bash
cd
rm -f .vimrc
wget https://raw.githubusercontent.com/zyzisyz/My-Setting/master/vim/.vimrc
```

## bashrc & bash_profile

```bash
cd
# note: check original bashrc before delete
wget https://raw.githubusercontent.com/zyzisyz/My-Setting/master/linux/.bashrc
```

## others

1. [conda command](https://raw.githubusercontent.com/zyzisyz/My-Setting/master/conda/conda_config.sh)
2. [thu-cslt anaconda config](https://raw.githubusercontent.com/zyzisyz/My-Setting/master/conda/cslt-bashrc)
