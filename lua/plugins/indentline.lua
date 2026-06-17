local M = {}

function M.config()
  require('ibl').setup({
    scope = { enabled = true },
  })
end

return M
