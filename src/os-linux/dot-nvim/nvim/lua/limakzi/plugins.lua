-- vim: foldmethod=marker

vim.cmd [[packadd packer.nvim]]

-- {{{1 plugins -- dracula/vim
vim.g.dracula_colorterm = 0
vim.cmd [[colorscheme dracula]]
-- }}}1

-- {{{1 plugins -- norcalli/nvim-colorizer
require('colorizer').setup()
-- }}}1

-- {{{1 plugins -- lewis6991/gitsigns.nvim
require('gitsigns').setup({
    signcolumn = true,
    numhl = false,
    linehl = false,
    signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
    },
})
-- }}}1

-- {{{1 plugins --  numtostr/comment
require('Comment').setup()
-- }}}1

-- {{{1 plugins -- nvim-treesitter/nvim-treesitter
require('nvim-treesitter.configs').setup({
    ensure_installed = { 
        'fish',
        'git_config',
        'gitcommit',
        'gitignore',
        'latex',
        'lua',
        'markdown',
        'requirements',
        'ssh_config',
        'terraform',
        'tmux',
        'vim',
        'vimdoc',
        'yaml',
        'zathurarc'
    },
    indent = {
        enable = true
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'vnn',
            node_incremental = 'J',
            scope_incremental = 'L',
            node_decremental = 'K',
        },
    },
    highlight = {
        enable = true,
    }
})

vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- }}}1

-- {{{1 plugins -- nvim-telescope/telescope.nvim
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})
-- }}}1

-- {{{1 plugins -- nvim-cmp
--
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

vim.opt.completeopt = "menu,menuone,noselect"

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  }),
})
-- }}}1

-- {{{1 plugins -- neogitorg/neogit
local neogit = require('neogit')
neogit.setup {
    auto_refresh = true,
    integrations = {
        telescope = true
    }
}

vim.keymap.set('n', '<leader>cc', function() neogit.open { } end, { noremap = true, silent = true, desc = 'neo[g]it open [s]plit' })
-- }}}1



return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}

    use {'dracula/vim', as = 'dracula'}     -- Colorscheme.
    use {'norcalli/nvim-colorizer.lua'}     -- Colorize #000000.

    use {'nvim-treesitter/nvim-treesitter'}
    use {'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = {
            {'nvim-lua/plenary.nvim', opt = false}}}

    use{'hrsh7th/nvim-cmp'}                 -- Completion - plugin
    use{'hrsh7th/cmp-buffer'}               -- Completion - source buffer.
    use{'hrsh7th/cmp-path'}                 -- Completion - source paths.

    use{'L3MON4D3/LuaSnip'}                 -- Snippet - engine.
    use{'saadparwaiz1/cmp_luasnip'}         -- Snippet - autocompletion.
    use{'rafamadriz/friendly-snippets'}     -- Snippet - collections.

    use {'numToStr/Comment.nvim' }          -- Better comments.

    use {'lewis6991/gitsigns.nvim'}         -- Git - inline.
    use {'NeogitOrg/neogit', requires = {   -- Git - interactive.
            {'nvim-lua/plenary.nvim', opt = false},
            {'sindrets/diffview.nvim', opt = false},
            {'nvim-telescope/telescope.nvim', opt = false},
            {'nvim-tree/nvim-web-devicons', opt = false}}}

    use {'lervag/vimtex'}
    use {'windwp/nvim-autopairs', event = 'InsertEnter', 
                                  config = function() 
                                               require('nvim-autopairs').setup({})
                                           end}
end)
