
return{
    {
        "tpope/vim-fugitive",
        config = function ()
            vim.keymap.set("n","<leader>gs",":vertical Git<CR>")
            vim.keymap.set("n","<leader>gh",":Git<CR>")
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config=function ()
            require("gitsigns").setup()
            vim.keymap.set("n","<leader>gp",":Gitsigns preview_hunk<CR>",{})
            vim.keymap.set("n","<leader>gb",":Gitsigns toggle_current_line_blame<CR>",{})
        end

    }

}

