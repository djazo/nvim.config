local M = {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
  }
}

function M.mark_file()
  require('harpoon.mark').add_file()
  vim.notify '󱡅  marked file'
end

return M
