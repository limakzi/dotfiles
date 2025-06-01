return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
          require("gruvbox").setup({
            undercurl = true,
            underline = true,
            bold = true,
            terminal_colors = true,
            italic = {
              strings = true,
              emphasis = true,
              comments = true,
              operators = false,
              folds = true,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = true,
            invert_tabline = false,
            inverse = true,
            contrast = "hard",
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = true,
          })
          vim.o.background = "dark"
          vim.cmd("colorscheme gruvbox")
        end
    }
}
