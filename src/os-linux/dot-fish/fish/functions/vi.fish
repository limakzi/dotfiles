if type -q nvim
    function vi --wraps nvim
        command nvim -p $argv
    end
else
    function vi --wraps vi
        command vi $argv
    end
end

