return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-treesitter/nvim-treesitter' },
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-telescope/telescope-project.nvim" },
      { "nvim-telescope/telescope-symbols.nvim" },
      { 'nvim-telescope/telescope-fzf-native.nvim' }
    },
    keys = {
      { "<leader>p", function() require("telescope.builtin").git_files() end, desc="Find git-files" },
      { "<leader>e", function() require("telescope.builtin").buffers() end, desc="Find buffers" },
      { "<leader>o", function() require("telescope").extensions.project.project{} end, desc="Find projects" },
    },
    config = function()
      require("telescope").load_extension("project")
      require("telescope").setup({
        extensions = {
          project = {
              sync_with_nvim_tree = true,
              ignore_missing_dirs = true,
              theme = "dropdown",
              base_dirs = {
                  { path = "~/dotfiles" },
                  { path = "~/documents/academia/" },
              },
          },
        },
        defaults = {
          path_display = { "smart" },
          layout_strategy = "vertical",
        },
      })
    end,
  }
}
