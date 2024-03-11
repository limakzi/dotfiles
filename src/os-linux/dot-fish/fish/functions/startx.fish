if type -q startx
    function startx --wraps startx
        command startx ~/.config/xorg/xinitrc $argv
    end
end
