# Use exa if installed
function ll --wraps='exa -l' --description 'alias ll=exa -l'
    if type exa &> /dev/null
        exa -l $argv; 
    else
        command ls -l $argv; 
    end
end
