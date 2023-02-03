require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "javascript",
    "typescript",
    "rust",
    "go",
    "c",
    "lua",
    "elixir",
    "erlang",
    "haskell",
    "heex",
    "eex",
    "css",
    "html",
    "json",
    "yaml",
    "regex",
    "graphql",
    "vim",
    "help"
  },

  -- If necessary, remove all: `:TSUninstall all`.
  -- ensure_installed = "all",

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
