# Use bat if installed
function cat --wraps=bat --description 'alias cat=bat'
    if ! type bat &> /dev/null
        command cat $argv
    else
        bat $argv
    end
end
