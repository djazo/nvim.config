local M = {
  'neovim/nvim-lspconfig',
  config = function()
    vim.lsp.config('clangd',{ cmd = '/opt/homebrew/opt/llvm/bin/clangd' })
    vim.lsp.enable('clangd')
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('bashls')
    vim.lsp.enable('cmake')
    vim.lsp.enable('dockerls')
    vim.lsp.enable('dotls')
  end
}

return M
