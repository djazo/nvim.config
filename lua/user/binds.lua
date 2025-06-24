-- keybindings for plugins, main keys are set in keymaps

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

local wk = require('which-key')

-- harpoon

keymap('n', '<TAB>', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)
keymap('n', '<A-TAB>', '<cmd>lua require("user.harpoon").mark_file()<cr>', opts)

-- nvimtree

wk.add({
  { '<leader>e', '<cmd>NvimTreeToggle<cr>', desc = 'Explorer' },
})

-- telescope keymaps
local builtin = require('telescope.builtin')
wk.add({
  { '<leader>f', group = 'Telescope'},
  { '<leader>fF', '<cmd>Telescope buffers previewer=false<cr>', desc = 'Find' },
  { '<leader>fb', '<cmd>Telescope git_branches<cr>', desc = 'Checkout Branch' },
  { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
  { '<leader>fp', '<cmd>lua require("telescope").extensions.projects.projects()<cr>', desc = 'Projects' },
  { '<leader>ft', '<cmd>Telescope live_grep<cr>', desc = 'Find Text' },
  { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help' },
  { '<leader>fl', '<cmd>Telescope resume<cr>', desc = 'Last Search' },
  { '<leader>fr', '<cmd>Telescope oldfiles<cr>', desc = 'Recent File' },
})

-- lsp keymaps

wk.add({
  { '<leader>l', group = 'LSP'},
  { '<leader>la', '<cmd>lua vim.lsp.buf.code_action()<cr>', desc = 'Code Action' },
  { '<leader>lf', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', desc = 'Format' },
  { '<leader>lh', '<cmd>lua require("user.lspconfig").toggle_inlay_hints()<cr>', desc = 'Hints' },
  { '<leader>li', '<cmd>LspInfo<cr>', desc = 'Info' },
  { '<leader>lj', '<cmd>lua vim.diagnostic.goto_next()<cr>', desc = 'Next Diagnostic' },
  { '<leader>lk', '<cmd>lua vim.diagnostic.goto_prev()<cr>', desc = 'Prev Diagnostic' },
  { '<leader>ll', '<cmd>lua vim.lsp.codelens.run()<cr>', desc = 'CodeLens Action' },
  { '<leader>lq', '<cmd>lua vim.diagnostic.setloclist()<cr>', desc = 'QuickFix' },
  { '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>', desc = 'Rename' },
})

-- gitsigns

wk.add({
  { '<leader>g', group = 'GIT'},
  { '<leader>gj', '<cmd>lua require("gitsigns").next_hunk({navigation_message = false})<cr>', desc = 'Next Hunk' },
  { '<leader>gk', '<cmd>lua require("gitsigns").prev_hunk({navigation_message = false})<cr>', desc = 'Prev Hunk' },
  { '<leader>gp', '<cmd>lua require("gitsigns").preview_hunk()<cr>', desc = 'Preview Hunk' },
  { '<leader>gr', '<cmd>lua require("gitsigns").reset_hunk()<cr>', desc = 'Reset Hunk' },
  { '<leader>gl', '<cmd>lua require("gitsigns").blame_line()<cr>', desc = 'Blame' },
  { '<leader>gR', '<cmd>lua require("gitsigns").reset_buffer()<cr>', desc = 'Reset Buffer' },
  { '<leader>gs', '<cmd>lua require("gitsigns").stage_hunk()<cr>', desc = 'Stage Hunk' },
  { '<leader>gu', '<cmd>lua require("gitsigns").undo_stage_hunk()<cr>', desc = 'Undo Stage Hunk' },
  { '<leader>gd', '<cmd>Gitsigns diffthis HEAD<cr>', desc = 'Git Diff' },
})
