-- awesome Neovim configs :).

require("awesome.keymaps")
require("awesome.base")

-- Load theme colors config --
function UseEverforestColors()
  color = color or "everforest"
  vim.cmd.colorscheme(color)

  vim.g.everforest_background = 'hard'
  -- vim.g.everforest_diagnostic_line_highlight = 1
  -- vim.g.everforest_diagnostic_text_highlight = 1
  -- vim.g.everforest_diagnostic_virtual_text = 'colored'

  -- vim.fn.sign_define({
  --   {
  --     name = 'DiagnosticSignError',
  --     texthl = 'DiagnosticSignError',
  --     linehl = 'ErrorLine'
  --   },
  --   {
  --     name = 'DiagnosticSignWarn',
  --     texthl = 'DiagnosticSignWarn',
  --     linehl = 'WarningLine'
  --   },
  --   {
  --     name = 'DiagnosticSignInfo',
  --     texthl = 'DiagnosticSignInfo',
  --     linehl = 'InfoLine'
  --   },
  --   {
  --     name = 'DiagnosticSignHint',
  --     texthl = 'DiagnosticSignHint',
  --     linehl = 'HintLine'
  --   },
  -- })
end

UseEverforestColors()
