function ColorNvim()
	vim.api.nvim_set_hl(0,"Normal",{bg = "none"})
	vim.api.nvim_set_hl(0,"NormalNC",{bg = "none"})
	vim.api.nvim_set_hl(0,"NeoTreeNormal",{bg = "none"})
	vim.api.nvim_set_hl(0,"NeoTreeNormalNC",{bg = "none"})
	vim.api.nvim_set_hl(0,"NormalFloat",{bg = "none"})
	vim.api.nvim_set_hl(0,"ColorColumn",{bg = "none"})

end

ColorNvim()

return {
    "catppuccin/nvim", name = "catppuccin", lazy = false , priority = 1000,
    config = function ()
        require("catppuccin").setup({
            transparent_background = true, -- disables setting the background color.

        })
        vim.cmd.colorscheme "catppuccin"
        ColorNvim()
    end

}
