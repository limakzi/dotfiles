vim.cmd [[packadd packer.nvim]]

-- {{{1 plugins -- dracula/vim
vim.cmd [[colorscheme dracula]]
-- }}}1

-- {{{1 plugins -- norcalli/nvim-colorizer
require('colorizer').setup()
-- }}}1

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'dracula/vim', as = 'dracula'}
    use {'norcalli/nvim-colorizer.lua'}
end)
