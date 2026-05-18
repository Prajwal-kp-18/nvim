return {
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("toggleterm").setup({
                direction = "float",
                float_opts = {
                    border = "rounded",
                },
            })

            vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", {
                desc = "Floating terminal"
            })

            vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
        end,
    },
}