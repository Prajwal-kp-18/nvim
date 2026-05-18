return {{
    "folke/todo-comments.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},

    config = function()
        require("todo-comments").setup()

        vim.keymap.set("n", "<leader>td", "<cmd>TodoTelescope keywords=TODO,FIX,NOTE,HACK,BUG<cr>", {
            desc = "Todo Telescope"
        })
    end
}}
