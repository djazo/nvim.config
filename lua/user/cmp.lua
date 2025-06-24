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
    mapping = {
      ['<CR>'] = cmp.mapping({
        i = function(fallback)
          if cmp.visible() and cmp.get_active_entry() then
            cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
          else
            fallback()
          end
        end,
        s = cmp.mapping.confirm({ select = true }),
        c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
      })
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
      { name = 'cmdline' },
      { name = 'nvim_lua' },
      { name = 'copilot' },
    }
  })
end

return M
