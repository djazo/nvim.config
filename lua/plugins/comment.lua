local M = {
  "numToStr/Comment.nvim",
}

function M.config()
  require("Comment").setup({
    -- Add a space b/w comment and the line
    padding = true,
    -- Whether the cursor should stay at its position
    sticky = true,
    -- Lines to be ignored while (un)comment
    ignore = nil,
    mappings = {
      basic = false,
      extra = false,
    }
  })
end

return M
