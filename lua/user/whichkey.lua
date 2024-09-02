local M = {
  "folke/which-key.nvim",
  opts = {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    win = {
      border = "rounded",
      position = "bottom",
      margin = { 2, 2, 2, 2 },
    },
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
},
}

function M.config()

  local which_key = require("which-key")
  which_key.setup {
    defaults = {
      mode = "n",
      prefix = "<leader>",
    },
    spec = {
    {"<leader>T", group = "Treesitter" },
    {"<leader>q", "<cmd>confirm q<CR>", desc = "Quit"},
    {"<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL"},
    {"<leader>v", "<cmd>split<CR>", desc = "split"},
    {"<leader>b", group = "Buffers" },
    {"<leader>d", group = "Debug" },
    {"<leader>f", group = "Find" },
    {"<leader>g", group = "Git" },
    {"<leader>l", group = "LSP" },
    {"<leader>p", group = "Plugins" },
    {"<leader>t", group = "Test" },
    {"<leader>a", group = "Tab" },
    {"<leader>an", "<cmd>tabnew<CR>", desc = "New Empty Tab"},
    {"<leader>aN", "<cmd>tabnew %<CR>", desc = "New Tab"},
    {"<leader>ao", "<cmd>tabonly<CR>", desc = "Only"},
    {"<leader>ah", "<cmd>-tabmove<CR>", desc = "Move Left"},
    {"<leader>al", "<cmd>+tabmove<CR>", desc = "Move Right"},
  }
  }
end

return M
