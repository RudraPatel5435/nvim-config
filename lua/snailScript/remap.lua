vim.g.mapleader=" "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "=ap", "ma=ap'a")

-- greatest remap ever
-- vim.keymap.set("x", "<leader>p", [["_dP]]) -- replace

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p"]]) 

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d") -- deletes and send to void

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set(
    "i",
    "clg",
    "console.log()<Esc>ha"
)

vim.keymap.set(
    "i",
    "(",
    "()<Esc>i"
)

vim.keymap.set(
    "i",
    "{<CR>",
    "{}<Esc>i<CR><CR><Esc>ki<Tab>"
)

vim.keymap.set(
    "i",
    "{",
    "{}<Esc>i"
)

vim.keymap.set(
    "i",
    "[",
    "[]<Esc>i"
)

vim.keymap.set(
    "i",
    "'",
    "''<Esc>i"
)

vim.keymap.set(
    "i",
    '"',
    '""<Esc>i'
)

vim.keymap.set(
    "i",
    "rafce",
    "import React from 'react'<CR><CR>const App = () => {}<Esc>i<CR><CR><Esc>ki<Tab>return(<CR><CR>)<Esc>ki<Tab><Tab><div>App</div><Esc>jjo<CR>export default App<Esc>kkkkFA"
)

vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {
        noremap = false,
        silent =  true
})

vim.api.nvim_set_keymap("v", "<C-_>", "gc", {
        noremap = false,
        silent =  true
})

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<F5>", ":!gcc % -o %:r && %:r<CR>", { noremap = true, silent = true })
