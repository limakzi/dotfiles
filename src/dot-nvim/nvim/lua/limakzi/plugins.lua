vim.cmd [[packadd packer.nvim]]

-- {{{1 dracula/vim
vim.cmd[[colorscheme dracula]]
-- }}}1

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'dracula/vim', as = 'dracula'}
end)
