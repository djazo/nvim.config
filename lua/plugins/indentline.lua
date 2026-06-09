local M = {
  "lukas-reineke/indent-blankline.nvim",
}

function M.config()
  local icons = require('core.icons')

  require('ibl').setup({
    scope = { enabled = true },
  })
end

return M
