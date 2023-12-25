require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "clangd", "pyright" },
    automatic_installation = false,
}

local lspconfig = require('lspconfig')
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}
lspconfig.lua_ls.setup {}

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer = 0})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition, opts)

vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
