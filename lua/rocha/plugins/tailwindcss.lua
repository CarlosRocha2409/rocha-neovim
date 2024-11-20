return {
    {
        "NvChad/nvim-colorizer.lua",
        opts = {
            user_default_options = {
                mode = "background",
                tailwind = true,
                css = true,
            },
        },
    },
    {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = function()
            require("tailwindcss-colorizer-cmp").setup({
                color_square_width = 2,
            })
        end
    }
}
