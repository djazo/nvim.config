local M = {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
}

function M.config()
  local lspconfig = require('lspconfig')
  local icons = require('user.icons')

  vim.lsp.enable('bashls')
  vim.lsp.enable('clangd', {
    cmd = '/opt/homebrew/opt/llvm/bin/clangd'
  })
  vim.lsp.enable('cmake')
  vim.lsp.enable('dockerls')
  vim.lsp.enable('dotls')
  vim.lsp.enable('lua_ls')
  vim.lsp.enable('texlab', {
    settings = {
      texlab = {
        forwardSearch = {
          executable = '/Applications/Skim.app/Contents/SharedSupport/displayline',
          args = { '-r', '%l', '%p', '%f' },
          onSave = true,
        }
      }
    }

  })
end

return M
