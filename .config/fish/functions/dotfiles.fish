function dotfiles --description "Manage dotfiles with a bare Git repository"
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end
