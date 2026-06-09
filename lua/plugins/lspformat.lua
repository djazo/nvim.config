local M = {
  'lukas-reineke/lsp-format.nvim',
  event = 'LspAttach',
  config = function()
    require('lsp-format').setup({
      format_on_save = {
        lsp = true,
      },
    })
  end,
}

return M
