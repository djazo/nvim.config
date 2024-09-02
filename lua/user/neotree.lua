local M = {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  }
}

function M.config()
  local wk = require("which-key")
  wk.add {
  {"<leader>e","<cmd>Neotree toggle<cr>", desc = "Toggle Neotree"}
  }

require("neo-tree").setup({
    window= {
      mappings = {
        ["P"] = {"toggle_preview", config = { use_float = true, use_image_nvim = true }},
      }
    }
  })

end

return M
