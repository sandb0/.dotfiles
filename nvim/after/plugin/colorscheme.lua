function UseRosePineColors()
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Load theme colors config --
function UseEverforestColors()
  color = color or "everforest"
  vim.cmd.colorscheme(color)

  vim.g.everforest_background = 'hard'

  -- Working good only in `vim.opt.background`: dark.
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

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

-- UseEverforestColors()

UseRosePineColors()
