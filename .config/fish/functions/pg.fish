# Generate a password and open editor to add more info
# Also copies generated password to clipboard
# You can specify different generation parameters
function pg --wraps=pass --description="generate and edit a password file"
    pass generate -c $argv && pass tailedit $argv[1]
end
