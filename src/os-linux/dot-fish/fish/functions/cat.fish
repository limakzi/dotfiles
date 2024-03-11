if type -q batcat
    function cat --wraps batcat
        command batcat $argv
    end
end
