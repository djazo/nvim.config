local M = {
  "robitx/gp.nvim",
  config = function()
    require("gp").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      openai_api_key = {"cat","~/.openai_api_key"},
    })
  end,
}

return M
