local M = {
  "lukas-reineke/indent-blankline.nvim",
}

function M.config()
  local icons = require('user.icons')

  require('ibl').setup({
    scope = { enabled = true },
  })
end

return M
