local M = {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    provider = "claude",
    claude = {
      endpoint = "https://api.anthropic.com",
      model = "claude-sonnet-4-20250514",
      temperature = 0,
      max_tokens = 4096,

    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "zbirenbaum/copilot.lua",

  },
  keys = {
    { "<leader>aa", function() require("avante.api").ask() end,     desc = "avante: ask" },
    { "<leader>ar", function() require("avante.api").refresh() end, desc = "avante: refresh" },
  }

}

return M
