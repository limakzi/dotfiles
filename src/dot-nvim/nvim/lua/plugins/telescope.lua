return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-telescope/telescope-project.nvim" },
      { "nvim-telescope/telescope-symbols.nvim" },
      { 'nvim-telescope/telescope-fzf-native.nvim' }
    },
    keys = {
      { "<leader>p", function() require("telescope.builtin").fd() end, desc="Find files" },
      { "<leader>e", function() require("telescope.builtin").buffers() end, desc="Find buffers" },
      { "<leader>s", function() require("telescope.builtin").live_grep() end, desc="Find buffers" },
      { "<leader>o", function() require("telescope").extensions.project.project{ hide_workspace = true } end, desc="Find projects" },
    },
    config = function()
      require("telescope").setup({
        extensions = {
          project = {
              sync_with_nvim_tree = true,
              ignore_missing_dirs = true,
              theme = "ivy",
              base_dirs = {
                  { path = "~/dotfiles" },
                  { path = "~/documents/sysdogs/" },
                  { path = "~/documents/academia/" },
              },
          },
        },
        pickers = {
          buffers = { theme = "ivy" },
          fd = { theme = "ivy" },
          live_grep = { theme = "ivy" },
          find_files = { theme = "ivy" },
          git_files = { theme = "ivy" },
          oldfiles = { theme = "ivy" },
          project = { theme = "ivy" },
        },
        defaults = {
          path_display = { "smart" },
          layout_strategy = "vertical",
        },
      })
    end,
  }
}
