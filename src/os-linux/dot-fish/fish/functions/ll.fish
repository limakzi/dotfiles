if type -q lsd
    function ll --wraps lsd
        command lsd -Flha $argv
    end
else
    function ll --wraps ls
        command ls -lh $argv
    end
end
