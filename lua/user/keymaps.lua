local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- leader thingies
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 
keymap("n","<C-i>","<C-i>",opts)

-- window navigation
keymap("n","<C-h>","<C-w>h",opts)
keymap("n","<C-l>","<C-w>l",opts)
keymap("n","<C-j>","<C-w>j",opts)
keymap("n","<C-k>","<C-w>k",opts)

-- tab navigation
keymap("n","<s-h>", function() vim.cmd('tabp') end, opts)
keymap("n","<s-l>", function() vim.cmd('tabn') end, opts)
