return {
    {
        "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
        lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
        dependencies = {
          { "ms-jpq/coq_nvim", branch = "coq" },
          { "ms-jpq/coq.artifacts", branch = "artifacts" },

          { 'ms-jpq/coq.thirdparty', branch = "3p" }
        },
        init = function()
        vim.g.coq_settings = {
            ["keymap.pre_select"] = true,
            auto_start = true,
        }
        end,
        config = function()
        end,
    }  
}
