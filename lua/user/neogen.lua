local M = {
  'danymat/neogen',
  config = function()
    require('neogen').setup(
      { snippet_engine = 'luasnip' }
    )
  end
}

return M
