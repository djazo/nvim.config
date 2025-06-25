local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({'n','v'}, '<Space>', '', opts)

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- don't put deleted chars into buf
keymap('n', 'x', '"_x', opts)

-- moving lines
keymap('v', '<a-k>', ":m '<-2<cr>gv=gv", { desc = "move lines up in visual selection" })
keymap('v', '<a-j>', ":m '>+1<cr>gv=gv", { desc = "move lines down in visual selection" })
