require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "regex", "graphql", "json", "yaml", "css", "html", "help", "javascript", "typescript", "c", "lua",
    "vim", "help" },

  sync_install = false,

  auto_install = true,

  indent = {
    enable = true,
    disable = {},
  },

  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },

  autotag = {
    enable = true
  }
}
