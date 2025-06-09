local M = {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
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
      'sql',
      'toml',
      'xml',
      'yaml',
  }
}
}

return M
