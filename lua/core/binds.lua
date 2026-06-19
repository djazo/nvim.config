-- 
local wk = require('which-key')

-- file menu
wk.add({
  { '<leader>f', group = 'File' },
  { '<leader>fo', '<cmd>Oil<cr>', desc = 'Oil' },
  { '<leader>ff', function () MiniPick.builtin.files({ tool = 'rg' }) end, desc = 'Find Files'}
})

-- lsp menu
wk.add({
  { '<leader>l', group = 'LSP'},
  { '<leader>lf', function() vim.lsp.buf.format({ async = true }) end, desc = 'Format'},
  { '<leader>la', vim.lsp.buf.code_action, desc = 'Code Action'},
  { '<leader>lh', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled()) end, desc = 'Toggle Inlay Hints'},
  { '<leader>lj', function() vim.diagnostic.jump({ count = 1, float = true }) end, desc = 'Next Diagnostic'},
  { '<leader>lk', function() vim.diagnostic.jump({ count = -1, float = true }) end, desc = 'Previous Diagnostic'},
  { '<leader>lq', function() vim.diagnostic.setloclist() end, desc = 'Diagnostic to LocList'},
})
