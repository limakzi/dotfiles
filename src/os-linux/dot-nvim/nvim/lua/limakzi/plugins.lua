vim.cmd [[packadd packer.nvim]]

-- {{{1 plugins -- dracula/vim
vim.cmd [[colorscheme dracula]]
-- }}}1

-- {{{1 plugins -- norcalli/nvim-colorizer
require('colorizer').setup()
-- }}}1

-- {{{1 plugins -- neogitorg/neogit
require('neogit').setup()
-- }}}1

-- {{{1 plugins --  numtostr/comment
require('Comment').setup()
-- }}}1

-- {{{1 plugins -- nvim-telescope/telescope.nvim
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, {})
-- }}}1




return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}

    use {'dracula/vim', as = 'dracula'}
    use {'norcalli/nvim-colorizer.lua'}

    use {'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = {
            {'nvim-lua/plenary.nvim', opt = false}}}

    use {'numToStr/Comment.nvim' }

    use {'NeogitOrg/neogit', requires = {
            {'nvim-lua/plenary.nvim', opt = false},
            {'sindrets/diffview.nvim', opt = false},
            {'nvim-telescope/telescope.nvim', opt = false}}}

    use {'lervag/vimtex'}
end)
