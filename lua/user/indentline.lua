local M = {
  'lukas-reineke/indent-blankline.nvim',
  event = 'VeryLazy',
}

function M.config()
  local icons = require('user.icons')

  require('ibl').setup({
    scope = { enabled = true }
  })
end

return M
