-- import nvim-cmp plugin safely
local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
    return
end

-- import luasnip plugin safely
local luasnip_status, luasnip = pcall(require, "luasnip")
if not luasnip_status then
    return
end


-- load VSCode-like snippets from plugins (e.g., friendly-snippets)


require("luasnip/loaders/from_vscode").lazy_load()


cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(),
        ["<C-f>"] = cmp.mapping.scroll_docs(),
        ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(), -- close completion window
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    -- sources for autocompletion
    sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- LSP
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within the current buffer
        { name = "path" }, -- file system paths
    }),
    native_menu = false, -- disable default completion menu
})

local ELLIPSIS_CHAR = '…'
local MAX_LABEL_WIDTH = 20
local MIN_LABEL_WIDTH = 20

cmp.setup({
    formatting = {
        format = function(entry, vim_item)
            local label = vim_item.abbr
            local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
            if truncated_label ~= label then
                vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
            elseif string.len(label) < MIN_LABEL_WIDTH then
                local padding = string.rep(' ', MIN_LABEL_WIDTH - string.len(label))
                vim_item.abbr = label .. padding
            end
            return vim_item
        end,
    },
  })
  
