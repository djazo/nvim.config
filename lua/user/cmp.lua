local M = {
  'hrsh7th/nvim-cmp',
  dependencies = {
    {'hrsh7th/cmp-buffer', event = 'InsertEnter'},
    {'hrsh7th/cmp-nvim-lsp', event = 'InsertEnter'},
    {'hrsh7th/cmp-path', event = 'InsertEnter'},
    {'hrsh7th/cmp-cmdline', event = 'CmdlineEnter'},
    {'hrsh7th/cmp-nvim-lua', event = 'InsertEnter'},
    {'zbirenbaum/copilot-cmp', event = 'InsertEnter'},
  }
}

function M.config()
  local cmp = require('cmp')

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.snippet.expand(args.body)
      end
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-CR>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<a-f>'] = cmp.mapping.scroll_docs(4),
      ['<a-b>'] = cmp.mapping.scroll_docs(-4)
    }),
    sources = {
      { name = 'nvim_lsp' },
      { name = 'copilot' },
      { name = 'buffer' },
      { name = 'path' },
      { name = 'cmdline' },
      { name = 'nvim_lua' },
    }
  })
end

return M
