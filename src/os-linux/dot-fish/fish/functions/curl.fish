if type -q curl
    function curl --wraps curl
        command curl --config $HOME/.config/curl/curlrc $argv
    end
end

