return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
      { "<leader>1", function() vim.cmd.Neotree("reveal", "toggle=true") end, desc="Toggle neo-tree" },
    },
    lazy = false,
    opts = {
      close_if_last_window = true,
      filesystem = {
        window = {
          mappings = {
            ["."] = "toggle_hidden",
            ["H"] = "set_root",
          },
        },
      },
      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
  },
}
