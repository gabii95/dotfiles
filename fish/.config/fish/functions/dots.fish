function dots --wraps='git -C $HOME/dotfiles' --description 'alias dots=git -C $HOME/dotfiles'
    git -C $HOME/dotfiles $argv
end
