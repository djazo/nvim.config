local M = {
  'L3MON4D3/LuaSnip',
  dependencies = {
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'benfowler/telescope-luasnip.nvim',
  },
  config = function(_, opts)
    if opts then require('luasnip').config.setup(opts) end
    vim.tbl_map(
      function(type)
        require('luasnip.loaders.from_' .. type).lazy_load()
      end,
      { 'vscode', 'snipmate', 'lua' }
    )
    require('luasnip').filetype_extend('cpp', { 'cppdoc' })
  end
}

return M
