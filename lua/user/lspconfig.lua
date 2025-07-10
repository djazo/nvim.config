local M = {
  'neovim/nvim-lspconfig',
  opts = {
    inlay_hints = { enabled = true },
  },
  event = { 'BufReadPre', 'BufNewFile' },
}

function M.config()
  local lspconfig = require('lspconfig')
  local icons = require('user.icons')

  vim.lsp.config('clangd', {
    cmd = {
      '/opt/homebrew/opt/llvm/bin/clangd',
      '--clang-tidy',
      '--background-index',
      '--header-insertion=iwyu',
      '--completion-style=detailed',
      '--function-arg-placeholders',
      '--style=file',
    },
  })

  vim.lsp.config('texlab', {
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

  vim.lsp.enable('bashls')
  vim.lsp.enable('clangd')
  vim.lsp.enable('cmake')
  vim.lsp.enable('dockerls')
  vim.lsp.enable('dotls')
  vim.lsp.enable('lua_ls')
  vim.lsp.enable('texlab')

  vim.diagnostic.config({
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
        [vim.diagnostic.severity.WARN] = icons.diagnostics.Warning,
        [vim.diagnostic.severity.INFO] = icons.diagnostics.Information,
        [vim.diagnostic.severity.HINT] = icons.diagnostics.Hint,
      },
    },
  })
end

return M
