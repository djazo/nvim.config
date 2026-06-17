local M = {}

function M.config()
  require('telescope').setup {
    extension = {
      ['ui-select'] = {
        require('telescope.themes').get_dropdown(),
      },
    },
  }
  pcall(require('telescope').load_extension, 'fzf')
  pcall(require('telescope').load_extension, 'ui-select')
end

return M
