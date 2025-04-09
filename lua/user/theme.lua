local M = {
  "catppuccin/nvim",
  flavour = 'mocha',
  lazy = false,
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "catppuccin"
end

return M
