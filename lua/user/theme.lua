local M = {
  "folke/tokyonight.nvim",
  lazy = falsem
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "tokyonight"
end

return M
