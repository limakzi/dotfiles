return {
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.8',

        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-treesitter/nvim-treesitter' },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable('make') == 1 }
        },
        defaults = {
            layout_config = {
                vertical = { width = 0.5 }
            },
            mappings = {
                i = {
                    -- map actions.which_key to <C-h> (default: <C-/>)
                    -- actions.which_key shows the mappings for your picker,
                    -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                    ["<C-p>"] = "git_files"
                }
            }
        }
    }
}
