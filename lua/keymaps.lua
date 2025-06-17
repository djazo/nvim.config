local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({"n","v"}, "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- don't put deleted chars into buf
keymap("n", "x", '"_x', opts)

-- sizing
keymap("n","<Up>", ":resize -2<CR>", opts)
keymap("n","<Down>", ":resize +2<CR>", opts)
keymap("n","<Left>", ":vertical resize -2<CR>", opts)
keymap("n","<Right>", ":vertical resize +2<CR>", opts)


