-- keybindings for plugins, main keys are set in keymaps

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local wk = require('which-key')

-- telescope keymaps
local builtin = require('telescope.builtin')
wk.add({
  { '<leader>f',  group = 'Telescope' },
  { '<leader>fF', '<cmd>Telescope buffers previewer=false<cr>',                       desc = 'Find' },
  { '<leader>fb', '<cmd>Telescope git_branches<cr>',                                  desc = 'Checkout Branch' },
  { '<leader>ff', '<cmd>Telescope find_files<cr>',                                    desc = 'Find Files' },
  { '<leader>fp', '<cmd>lua require("telescope").extensions.projects.projects()<cr>', desc = 'Projects' },
  { '<leader>ft', '<cmd>Telescope live_grep<cr>',                                     desc = 'Find Text' },
  { '<leader>fh', '<cmd>Telescope help_tags<cr>',                                     desc = 'Help' },
  { '<leader>fl', '<cmd>Telescope resume<cr>',                                        desc = 'Last Search' },
  { '<leader>fr', '<cmd>Telescope oldfiles<cr>',                                      desc = 'Recent File' },
  { '<leader>fq', '<cmd>Telescope quickfix<cr>',                                      desc = 'Quickfix' },
  { '<leader>fo', '<cmd>Oil<cr>', desc = 'Open Oil' },
})

-- lsp keymaps

wk.add({
  { '<leader>l',  group = 'LSP' },
  { '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>',                                      desc = 'Code Action' },
  { '<leader>lf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>',                             desc = 'Format' },
  { '<leader>lh', '<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>', desc = 'Hints' },
  { '<leader>li', '<cmd>LspInfo<cr>',                                                            desc = 'Info' },
  { '<leader>lj', '<cmd>lua vim.diagnostic.goto_next()<cr>',                                     desc = 'Next Diagnostic' },
  { '<leader>lk', '<cmd>lua vim.diagnostic.goto_prev()<cr>',                                     desc = 'Prev Diagnostic' },
  { '<leader>ll', '<cmd>lua vim.lsp.codelens.run()<cr>',                                         desc = 'CodeLens Action' },
  { '<leader>lq', '<cmd>lua vim.diagnostic.setloclist()<cr>',                                    desc = 'QuickFix' },
  { '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>',                                           desc = 'Rename' },
})
