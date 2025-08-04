local M = {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPost', 'BufNewFile' },
  build = ':TSUpdate',
}

function M.config()
  require('nvim-treesitter').setup {
    ensure_installed = {
      'asm',
      'bash',
      'c',
      'caddy',
      'cmake',
      'cpp',
      'css',
      'csv',
      'diff',
      'dockerfile',
      'dot',
      'doxygen',
      'gitcommit',
      'gitignore',
      'gnuplot',
      'go',
      'html',
      'latex',
      'linkerscript',
      'lua',
      'markdown',
      'meson',
      'ninja',
      'objdump',
      'python',
      'regex',
      'verilog',
      'sql',
      'toml',
      'xml',
      'yaml',
    },
    hilight = {
      enable = true,
    },
    indent = {
      enable = true
    },
  }
end

return M
