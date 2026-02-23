local M = {
  'stevearc/oil.nvim',
  dependencies = {
    'echasnovski/mini.icons',
  },
  config = function()
    require('oil').setup({
      win_options = {
        signcolumn = "yes:3",
      },
    })
  end
}

return M
