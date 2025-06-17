local M = {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'zbirenbaum/copilot-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'zbirenbaum/copilot-cmp',
    'onsails/lspkind-nvim',
  },
  config = function()
    local cmp = require('cmp')
    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-CR>'] = cmp.mapping.confirm({ select = false }),
      }),
      view = {
        entries = 'native',
      },
      formatting = {
        format = require('lspkind').cmp_format()
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'copilot' },
        { name = 'path' }
      })
    })
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('lspconfig')['clangd'].setup {
    capabilities = capabilities,
  }
  end

}

return M
