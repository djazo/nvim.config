vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.align' },
  { src = 'https://github.com/nvim-mini/mini.comment' },
  { src = 'https://github.com/nvim-mini/mini.completion' },
  { src = 'https://github.com/nvim-mini/mini.diff' },
  { src = 'https://github.com/nvim-mini/mini.files' },
  { src = 'https://github.com/nvim-mini/mini.icons' },
  { src = 'https://github.com/nvim-mini/mini.notify' },
  { src = 'https://github.com/nvim-mini/mini.operators' },
  { src = 'https://github.com/nvim-mini/mini.pairs' },
  { src = 'https://github.com/nvim-mini/mini.pick' },
  { src = 'https://github.com/nvim-mini/mini.snippets' },
  { src = 'https://github.com/nvim-mini/mini.statusline' },
  { src = 'https://github.com/nvim-mini/mini.surround' },
  { src = 'https://github.com/nvim-mini/mini.trailspace' },
})

require('mini.align').setup()
require('mini.comment').setup()
require('mini.completion').setup({
  lsp_completion = {
    auto_setup = true,
  },
  delay = { completion = 100, info = 100, signature = 50 },
  window = {
    info = { height = 25, width = 80, border = nil },
    signature = { height = 25, width = 80, border = nil },
  },
})

require('mini.diff').setup()
require('mini.files').setup()
require('mini.icons').setup()
require('mini.notify').setup()
require('mini.operators').setup()
require('mini.pairs').setup()
require('mini.pick').setup()
require('mini.snippets').setup({
  snippets = {
    require('mini.snippets').gen_loader.from_lang(),
  },
})
require('mini.statusline').setup({
  { use_icons = vim.g.have_nerd_font }
})
require('mini.surround').setup()
require('mini.trailspace').setup()
