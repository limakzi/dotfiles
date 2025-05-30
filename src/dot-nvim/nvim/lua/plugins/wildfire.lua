return {
    {
        "sustech-data/wildfire.nvim",
        event = "VeryLazy",
        dependencies = { { "nvim-treesitter/nvim-treesitter" } },
        config = function()
            require("wildfire").setup(
                {
                  surrounds = {
                      { "(", ")" },
                      { "{", "}" },
                      { "<", ">" },
                      { "[", "]" },
                      { "<", ">" },
                      { "\'", "\'" },
                      { "\"", "\"" },
                  },
                  keymaps = {
                      init_selection = "<CR>",
                      node_incremental = "<CR>",
                      node_decremental = "<S-CR>",
                  },
                  filetype_exclude = { "qf" }, --keymaps will be unset in excluding filetypes
              }
            )
        end,
    }
}
