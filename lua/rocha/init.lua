require("rocha.remap")
require("rocha.set")
require("rocha.lazy_init")

local augroup = vim.api.nvim_create_augroup
local rochaGroup = augroup('rocha', {})
local autocmd = vim.api.nvim_create_autocmd

autocmd('LspAttach', {
    group = rochaGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>lws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>ld", function() vim.diagnostic.open_float({ focusable = true }) end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>laa", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>lrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})
