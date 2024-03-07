if type -q dotbot
    function dotbot --wraps dotbot
        command dotbot -x -c dotbot.conf.yaml $argv
    end
end
