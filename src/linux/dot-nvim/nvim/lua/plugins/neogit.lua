return {
    {
        "timuntersberger/neogit",
        cmd = "Neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", 
            "sindrets/diffview.nvim",
        },
        keys = { 
            { "<leader>gg", "<cmd>Neogit<CR>", mode = { "n" }, desc = "Open Neogit" } 
        },
    }
}
