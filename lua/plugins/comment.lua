local M = {}

function M.config()
  require("Comment").setup({
    padding = true,
    sticky = true,
    ignore = nil,
    mappings = {
      basic = false,
      extra = false,
    }
  })
end

return M
