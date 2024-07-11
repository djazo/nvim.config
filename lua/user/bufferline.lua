local M = {'akinsho/bufferline.nvim', version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons'}

function M.config()
  require("bufferline").setup()
end

vim.keymap.set('n','<S-h>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n','<S-l>', ':BufferLineCycleNext<CR>')

return M
