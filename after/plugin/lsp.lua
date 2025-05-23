local lsp = require('lsp-zero')
local mason = require("mason").setup()
local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')
lsp.extend_lspconfig()
lsp.extend_cmp()

mason_lspconfig.setup({
  ensure_installed = {
    'ts_ls',
    'cssls',
    'html',
    'pylsp',
    'clangd',
  }
})

require('lspconfig').cssls.setup({
    settings = {
        css = {
            validate = true,
        }, 
        scss = {
            validate = true,
        }, 
        less= {
            validate = true,
        }, 
    }
})

-- Auto open diagnostics on save
vim.cmd [[
autocmd TextChanged,TextChangedI,InsertLeave * lua vim.diagnostic.open_float(nil, { focusable = false, scope = "line" })
]]

--Automatically show diagnostics
vim.diagnostic.config({
    virtual_text = {
        prefix = "●"
    },
    signs = true,  -- Enable signs (icons on the left)
    float = false,
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-a>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  },
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)
