if type -q gap
    function gap --wraps gap
        command gap -b -f $argv
    end
end
