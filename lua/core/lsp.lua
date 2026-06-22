-- clangd
vim.lsp.config('clangd', {
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

-- lua_ls
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = { globals = { 'vim' }},
    }
  }
})

-- copilot
vim.lsp.config('copilot', {
  cmd = { 'copilot-language-server', '--stdio' },
  filetypes = { '*' },
  root_dir = function() return vim.fn.getcwd() end,
  init_options = {
    editorInfo = { name = 'Neovim', version = vim.version().api_level },
    editorPluginInfo = { name = 'copilot-lsp', version = '0.1' },
  },
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('mini.completion').get_lsp_capabilities())
vim.lsp.config('*', {
  capabilities = capabilities
})

-- enables
vim.lsp.enable('bashls')
vim.lsp.enable('clangd')
vim.lsp.enable('cmake')
vim.lsp.enable('copilot')
vim.lsp.enable('docker-languag-server')
vim.lsp.enable('lua_ls')
vim.lsp.enable('marksman')
vim.lsp.enable('taplo')
vim.lsp.enable('texlab')
vim.lsp.enable('yamlls')
