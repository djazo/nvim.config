local M = {
  'neogitorg/neogit',
  event = 'VeryLazy',
}

function M.config()
  local icons = require('user.icons')

  require('neogit').setup({
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    kind = 'tab',
    commit_popup = {
      kind = 'split',
    },
    signs = {
      section = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      item = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      hunk = { '', '' },
    }

  })
end

return M
