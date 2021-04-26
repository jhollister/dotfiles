# Custom ls - exa if available
function ls --wraps=exa --description 'alias ls=exa'
    if type exa &> /dev/null
        exa $argv; 
    else
        # fallback to regular ls
        command ls $argv; 
    end
end
