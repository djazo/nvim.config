local M = {
  'stevearc/oil.nvim',
  dependencies = {
    'echasnovski/mini.icons',
  },
  config = function()
    require('oil').setup({
      view_options = {
        show_hidden = true,
      }
    })
  end
}

return M
