local M = {
  'nvim-tree/nvim-tree.lua',
  event = 'VeryLazy',
}

function M.config()
  local icons = require('user.icons')

  require('nvim-tree').setup({
    hijack_netrw = false,
    sync_root_with_cwd = true,
    view = {
      relativenumber = true,
    },
    renderer = {
      add_trailing = false,
      group_empty = false,
      full_name = false,
      root_folder_label = ':t',
      indent_width = 2,
      indent_markers = {
        enable = false,
        inline_arrows = true,
        icons = {
          corner = '└',
          edge = '│',
          item = '│',
          none = ' ',
        },
      },
      icons = {
        git_placement = 'before',
        padding = ' ',
        symlink_arrow = ' ➛ ',
        glyphs = {
          default = icons.ui.Text,
          symlink = icons.ui.FileSymlink,
          bookmark = icons.ui.BookMark,
          folder = {
            arrow_closed = icons.ui.ChevronRight,
            arrow_open = icons.ui.ChevronShortDown,
            default = icons.ui.Folder,
            open = icons.ui.FolderOpen,
            empty = icons.ui.EmptyFolder,
            empty_open = icons.ui.EmptyFolderOpen,
            symlink = icons.ui.FolderSymlink,
            symlink_open = icons.ui.FolderOpen,
          },
          git = {
            unstaged = icons.git.FileUnstaged,
            staged = icons.git.FileStaged,
            unmerged = icons.git.FileUnmerged,
            renamed = icons.git.FileRenamed,
            untracked = icons.git.FileUntracked,
            deleted = icons.git.FileDeleted,
            ignored = icons.git.FileIgnored,
          },
        },
      },
    },
  })
end

return M
