local keymap  = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({ 'n', 'v' }, '<Space>', '', opts)

-- don't put single characters into buf
keymap('n', 'x', '"_x', opts)

-- lsp
keymap('n', '<leader>la', vim.lsp.buf.code_action, opts)
keymap('n', '<leader>lf', function() vim.lsp.buf.format({ async = true }) end, opts)
keymap('n', '<leader>lh', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, opts)
keymap('n', '<leader>lj', function() vim.diagnostic.jump({ count = 1, float = true }) end, opts)
keymap('n', '<leader>lk', function() vim.diagnostic.jump({ count = -1, float = true }) end, opts)
keymap('n', '<leader>lq', function() vim.diagnostic.setloclist() end, opts)

-- oil
keymap('n', '<leader>fo', '<cmd>Oil<cr>', opts)

-- minipick
keymap('n', '<leader>ff', function() MiniPick.builtin.files({ tool = 'rg' }) end, opts)
