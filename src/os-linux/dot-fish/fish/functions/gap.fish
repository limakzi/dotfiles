if type -q gap
    function gap --wraps gap
        command gap -l '~/.config/gap/;' -b -f $argv
    end
end
