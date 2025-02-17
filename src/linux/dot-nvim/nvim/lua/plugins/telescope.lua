return {
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.8',

        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-treesitter/nvim-treesitter' },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable('make') == 1 }
        },
        keys = {
             { "<leader>ff", function() require("telescope.builtin").find_files() end, desc="Find: Files" },
        },
        defaults = {
            layout_config = {
                vertical = { width = 0.5 }
            },
            mappings = {
                n = {}
            }
        }
    }
}
