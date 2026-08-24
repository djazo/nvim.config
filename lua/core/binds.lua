--
local wk = require('which-key')

-- file menu
wk.add({
  { '<leader>f', group = 'File' },
  { '<leader>ff', function () MiniPick.builtin.files({ tool = 'rg' }) end, desc = 'Find Files'},
  { '<leader>fo', function () MiniFiles.open() end, desc = 'Open Filedir'}
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

-- git menu
local gs = require('gitsigns')
wk.add({
  { '<leader>g', group = 'git'},
  { '<leader>gs', gs.stage_hunk, desc = 'Stage Hunk'},
  { '<leader>gr', gs.reset_hunk, desc = 'Reset Hunk'},
  { '<leader>gS', gs.stage_buffer, desc = 'Stage Buffer'},
  { '<leader>gR', gs.reset_buffer, desc = 'Reset Buffer'},
  { '<leader>gp', gs.preview_hunk, desc = 'Preview Hunk'},
  { '<leader>gB', gs.blame_line({ full = true }), desc = 'Blame'},
  { '<leader>gb', gs.toggle_current_line_blame, desc = 'Toggle Blame Line'},
  { '<leader>gw', gs.toggle_word_diff, desc = 'Toggle Word Diff'}
})

wk.add({
  { '<leader>t', group = 'trim'},
  { '<leader>tl', function() MiniTrailspace.trim() end, desc = 'Trim Trailing Whitespace'},
  { '<leader>tf', function() MiniTrailspace.trim_last_lines() end, desc = 'Trim Last Lines'}
})

wk.add({
  { '<leader>p', group = 'plugins'},
  { '<leader>pu', function() vim.pack.update() end, desc = 'Update Plugins'},
})
