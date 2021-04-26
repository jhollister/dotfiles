# Defined via `source`
function ls --wraps=exa --description 'alias ls=exa'
    if type exa &> /dev/null
        exa $argv; 
    else
        command ls $argv; 
    end
end
