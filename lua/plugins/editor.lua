return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewOpen", "DiffviewFileHistory" },
        keys = {
            { "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Git commit history" },
        },
        opts = {
            file_history_panel = { win_config = { position = "left", width = 50 } },
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
    },
    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            vim.g.rainbow_delimiters = {
                highlight = {
                    "RainbowDelimiterYellow",
                    "RainbowDelimiterViolet",
                    "RainbowDelimiterBlue",
                },
            }
        end
    },
    {
        "sphamba/smear-cursor.nvim",
        event = "VeryLazy",
        opts = { cursor_color = "Cursor" },
    },
}
