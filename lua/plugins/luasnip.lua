local M = {}

function M.config()
  vim.tbl_map(
    function(type)
      require('luasnip.loaders.from_' .. type).lazy_load()
    end,
    { 'vscode', 'snipmate', 'lua' }
  )
  require('luasnip').filetype_extend('cpp', { 'cppdoc' })
end

return M
