if type -q gap
    function gap --wraps gap
        command gap -b -f -e $argv
    end
end
