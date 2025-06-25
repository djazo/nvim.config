local M = {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'AndreM222/copilot-lualine',
  },
}

function M.config()
  require('lualine').setup({
    options = {
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      ignore_focus = { 'NvimTree' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'lsp_status', 'progress' },
      lualine_z = { 'location' },
    },
    winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    inactive_winbar = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    extensions = { 'quickfix', 'man', 'fugitive' }
  })
end

return M
