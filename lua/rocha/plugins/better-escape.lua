return {
  "max397574/better-escape.nvim",
  config = function()
    require("better_escape").setup({
      default_mappings = false,
      mappings = {
        i = {
          k = {
            k = "<Esc>",
          },
          j = {
            j = "<Esc>",
          },
        },
        c = {
          k = {
            k = "<Esc>",
          },
          j = {
            j = "<Esc>",
          },
        },
        t = {
          j = {
            j = "<C-\\><C-n>",
          },
          k = {
            k = "<C-\\><C-n>",
          },
        },
        v = {
          j = {
            f = "<Esc>",
          },
          k = {
            f = "<Esc>",
          },
        },
        s = {
          k = {
            k = "<Esc>",
          },
          j = {
            j = "<Esc>",
          },
        },
      },



    })
  end,
}
