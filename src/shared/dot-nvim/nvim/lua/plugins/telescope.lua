return {
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',

    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
      { "nvim-tree/nvim-web-devicons", opts = {} },
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable('make') == 1 }
    },
    keys = {
      { "<leader>ff", function() require("telescope.builtin").fd() end, desc="Find: Files" },
    },
    defaults = {
      layout_config = {
          vertical = { width = 0.5 }
      },
      mappings = { n = {} }
    }
  }
}
