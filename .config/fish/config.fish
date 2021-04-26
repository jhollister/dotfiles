### Environment variables ###

set EBOOK_LIBRARY "$HOME/calibre"

set EDITOR "vim"

# suppress fish intro message
set fish_greeting

### Abbreviations ###
abbr -a cn cargo nightly

# copy password to clipboard
abbr -a pc pass -c

# view/edit password file contents
abbr -a pt pass tail
abbr -a pte pass tail edit

# tunnel into port 8384 on port 9999 (for syncthing)
abbr -a tssh ssh -L 9999:localhost:8384

# taskwarrior-tui
abbr -a tt taskwarrior-tui

# git shortcuts
abbr -a gc git commit

### Functions

# empty right prompt - don't want to see this in vi mode
function fish_right_prompt
end

# set vi key bindings
function fish_user_key_bindings
    fish_vi_key_bindings
end

# mode prompt for when VI mode is enabled
function fish_mode_prompt
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = fish_vi_key_bindings
        or test "$fish_key_bindings" = fish_hybrid_key_bindings
        switch $fish_bind_mode
            case default
                set_color --bold --background red white
                echo '>>>'
            case replace_one
                set_color --bold --background green white
                echo '[R]'
            case replace
                set_color --bold --background cyan white
                echo '[R]'
            case visual
                set_color --bold --background magenta white
                echo '[V]'
        end
        set_color normal
        echo -n ' '
    end
end

