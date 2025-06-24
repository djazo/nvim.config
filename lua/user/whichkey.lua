local M = {
  'folke/which-key.nvim',
  dependencies = {
    'echasnovski/mini.icons'
  }
}

function M.config()
  local wk = require('which-key')

  wk.setup({
    defaults = {
      mode = 'n',
      prefix = '<leader>',
    },
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      }
    }
  })
end

return M
