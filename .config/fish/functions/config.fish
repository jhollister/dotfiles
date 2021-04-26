# Alias for when interacting with dotfiles git repository
# Expects a bare git repository in ~/.cfg
function config --wraps='git' --description 'access git for dotfile repository'
  git --git-dir=$HOME/.cfg/ --work-tree=$HOME $argv; 
end
