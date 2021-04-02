# Defined in /var/folders/6k/dh6b51sj0b10n03v96mr4zfh0000gn/T//fish.AxojMN/fish_mode_prompt.fish @ line 1
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
