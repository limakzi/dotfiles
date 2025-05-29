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
      { "<leader>pp", function() require("telescope.builtin").git_files() end, desc="Find: Files from git-repository" },
      { "<leader>pf", function() require("telescope.builtin").fd() end, desc="Find: Find all-files" },
      { "<leader>e",  function() require("telescope.builtin").buffers() end, desc="Find: Buffers" },
    },
    defaults = {
      layout_config = {
          vertical = { width = 0.5 }
      },
      mappings = { n = {} }
    }
  }
}
