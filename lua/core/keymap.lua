local keymap  = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({ 'n', 'v' }, '<Space>', '', opts)

-- don't put single characters into buf
keymap('n', 'x', '"_x', opts)

