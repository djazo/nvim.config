local M = {}

function M.config()
  require('lsp-format').setup({
    format_on_save = {
      lsp = true,
    },
  })
end

return M
