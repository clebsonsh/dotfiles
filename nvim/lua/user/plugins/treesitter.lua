require('nvim-treesitter.configs').setup({
  ensure_installed = 'all',
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['if'] = '@function.inner',
        ['af'] = '@function.outer',
        ['ia'] = '@parameter.inner',
        ['aa'] = '@parameter.outer',
      },
    }
  }
})

require('ts_context_commentstring').setup {
  enable_autocmd = false,
  languages = {
    typescript = '// %s',
  },
}
