local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap({"n","v"}, "<Space>", "", opts)

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

-- telescope keymaps
local builtin = require 'telescope.builtin'
keymap('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
keymap('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
keymap('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
keymap('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
keymap('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
keymap('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
keymap('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
keymap('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
keymap('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
keymap('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

-- lsp keymaps

keymap('n', '<leader>lf', function()
  vim.lsp.buf.format({ async = true })
end , { desc = '[L]SP [F]ormat' })
keymap('n', '<leader>li', vim.lsp.buf.implementation, { desc = '[L]SP [I]mplementation' })
keymap('n', '<leader>ld', vim.lsp.buf.definition, { desc = '[L]SP [D]efinition' })
keymap('n', '<leader>lr', vim.lsp.buf.references, { desc = '[L]SP [R]eferences' })
keymap('n', '<leader>lh', vim.lsp.buf.hover, { desc = '[L]SP [H]over' })
keymap('n', '<leader>la', vim.lsp.buf.code_action, { desc = '[L]SP [A]ction' })
keymap('n', '<leader>ln', vim.lsp.buf.rename, { desc = '[L]SP re[N]ame' })
keymap('n', '<leader>lf', vim.lsp.buf.format, { desc = '[L]SP [F]ormat' })
