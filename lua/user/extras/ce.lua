local M = {
  "p00f/godbolt.nvim",
}

function M.setup()
  require("godbolt").setup({
    languages = {
      cpp = { compiler = "armv7-clang1810", userArguments = { "-Os", "-Wall", "-Wextra", "-pedantic", "-std=c++20" } },
      c = { compiler = "armv7-clang1810", userArguments = { "-Os", "-Wall", "-Wextra", "-pedenatic" } },
    }
  })
end

return M
