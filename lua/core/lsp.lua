-- clangd
vim.lsp.config('clangd',{
  cmd = {
    '/opt/homebrew/opt/llvm/bin/clangd',
    '--clang-tidy',
    '--background-index',
    '--header-insertion=iwyu',
    '--completion-style=detailed',
    '--function-arg-placeholders',
    '--style=file',
  }
})


-- texlab
vim.lsp.config('texlab', {
  settings = {
    texlab = {
      forwardsearch = {
        executable = '/Applications/Skim.app/Contents/SharedSupport/displayline',
        args = { '-r', '%l', '%p', '%f' },
        onSave = true,
      }
    }
  }
})

-- enables
vim.lsp.enable('clangd')
vim.lsp.enable('texlab')
vim.lsp.enable('taplo')
vim.lsp.enable('copilot')
vim.lsp.enable('yamlls')
vim.lsp.enable('lua_ls')
