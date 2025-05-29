return {
  {
    'neovim/nvim-lspconfig', 
    config = function()
        vim.lsp.enable('pyright')
        vim.lsp.enable('yamlls')
    end,
  }
}
