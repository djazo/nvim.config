local M = {
  'lukas-reineke/lsp-format.nvim',
  event = 'LspAttach',
  config = function()
    require('lsp-format').setup({
      -- This is the default, but you can also set it to `true` to enable
      -- formatting on save for all LSP clients.
      format_on_save = {
        lsp = true,
      },
    })
  end,
}

return M
