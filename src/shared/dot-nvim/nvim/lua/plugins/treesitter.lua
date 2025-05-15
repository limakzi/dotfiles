return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        opts = function(_, _)
            vim.filetype.add({
                extension = { 
                    g = "gap",
                    gi = "gap",
                    gd = "gap",
                    tst = "gaptst",
                },
            })
            vim.api.nvim_create_autocmd("FileType", {
                pattern = "gap",
                callback = function() vim.o.commentstring = "#%s" end,
            })
            end,
        config = function () 
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { 
                    "c", 
                    "lua", 
                    "vim", 
                    "vimdoc", 
                    "query", 
                    "elixir", 
                    "javascript", 
                    "gap", 
                    "gaptst", 
                    "html" 
                },
                sync_install = false,
                highlight = { 
                    enable = true 
                },
                indent = {
                    enable = true
                }
            })
            end
    }
}
