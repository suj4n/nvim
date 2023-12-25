
vim.opt.nu = true -- show line numbers
vim.opt.relativenumber = true -- show relative line numbers

vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spaces in tab when editing
vim.opt.shiftwidth = 4 -- number of spaces to use for autoindent
vim.opt.expandtab = true -- tabs are spaces

vim.opt.smartindent = true -- insert indents automatically

vim.opt.wrap = false -- display lines as one long lines


vim.opt.hlsearch = false -- highlight all matches on previous search pattern
vim.opt.incsearch = true -- do incremental searching

vim.opt.termguicolors = true -- enable 24-bit RGB colors

vim.opt.scrolloff = 8 -- keep 8 lines above/below cursor
vim.opt.signcolumn = "yes" -- always show signcolumn
vim.opt.isfname:append("@-@") -- treat dash as part of a word

vim.opt.updatetime = 500 -- faster ins-completion-menu

vim.opt.colorcolumn = "80" -- color column

vim.g.loaded_matchparen = true -- disable matchparen

vim.g.show_trailing_blankline_indent = true -- show trailing blankline indent

vim.opt.pumheight = 8 -- Makes popup menu smaller
vim.opt.pumwidth = 20 --Makes popup menu smaller

vim.opt.shortmess:append("c") -- Don't pass messages to |ins-completion-menu|.

vim.g.clipboard = "unnamedplus" -- use system clipboard

vim.g.menuone = false -- show menu even if there is only one item

vim.opt.fillchars = {eob = " "} --remove tilde on end of buffer
