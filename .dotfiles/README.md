```
git init --bare $HOME/.dotfiles
cd $HOME/.dotfiles
git remote add origin git@github.com:iktinoz/dotfiles.git
git fetch origin

git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout master 
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config --local status.showUntrackedFiles no
```


## setup precommit 

```
nano ~/.dotfiles/hooks/pre-commit
chmod 755 ~/.dotifles/hooks/pre-commit
```
