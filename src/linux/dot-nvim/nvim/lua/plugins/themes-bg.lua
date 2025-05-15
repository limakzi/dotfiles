return {
    {
        'typicode/bg.nvim',
        lazy = false
    },
    { 
        "catppuccin/nvim", 
        name = "catppuccin", 
        priority = 1000,
        -- Configuration block for the Catppuccin theme
        -- Default behavior: Uses the "mocha" flavor with no additional customization.
        -- To customize, modify the options table below.
        config = function()
            require("catppuccin").setup({
                flavor = "mocha", -- Available flavors: latte, frappe, macchiato, mocha
                -- Add other customization options here if needed
            })
        end
    }
}
