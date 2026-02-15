local M = {
  'hrsh7th/nvim-cmp',
  dependencies = {
    { 'hrsh7th/cmp-buffer',     event = 'InsertEnter' },
    { 'hrsh7th/cmp-nvim-lsp',   event = 'InsertEnter' },
    { 'hrsh7th/cmp-path',       event = 'InsertEnter' },
    { 'hrsh7th/cmp-cmdline',    event = 'CmdlineEnter' },
    { 'hrsh7th/cmp-nvim-lua',   event = 'InsertEnter' },
    { 'onsails/lspkind.nvim' }
  }
}

function M.config()
  local cmp = require('cmp')
  local lspkind = require('lspkind')

  cmp.setup({
    formatting = {
      format = lspkind.cmp_format({
        mode = 'symbol',
        maxwidth = {
          menu = 50,
          abbr = 50,
        },
        ellipsis_char = '...'
      })
    },
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-CR>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<a-f>'] = cmp.mapping.scroll_docs(4),
      ['<a-b>'] = cmp.mapping.scroll_docs(-4),
      ['<a-j>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.snippet.jumpable(1) then
          vim.snippet.jump(1)
        else
          fallback()
        end
      end, { 'i', 's' }),
      ['<a-k>'] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.snippet.jumpable(-1) then
          vim.snippet.jump(-1)
        else
          fallback()
        end
      end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp', priority = 1 },
      { name = 'buffer',   priority = 3 },
      { name = 'path' },
      { name = 'cmdline' },
    }),
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered()
    },
    experimantal = {
      ghost_text = true,
      native_menu = false
    }
  })
end

return M
