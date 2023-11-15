function UseRosePineColors()
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- UseRosePineColors()

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

function UseGruvboxColors()
  vim.cmd('colorscheme gruvbox')
  vim.cmd('highlight clear SignColumn')
  vim.cmd('highlight clear GitSignsAdd')
  vim.cmd('highlight clear GitSignsChange')
  vim.cmd('highlight clear GitSignsDelete')
end

-- UseGruvboxColors()

function UseGighubColors()
  vim.cmd('highlight clear SignColumn')
  vim.cmd('highlight clear GitSignsAdd')
  vim.cmd('highlight clear GitSignsChange')
  vim.cmd('highlight clear GitSignsDelete')
end

-- UseGighubColors()

function UseCatppuccinColors()
  local catppuccin = require("catppuccin")

  if not catppuccin then
    return
  end

  vim.g.catppuccin_flavour = "mocha"

  catppuccin.setup({
    flavour = "mocha",
    term_colors = true,
    transparent_background = true,
    no_italic = false,
    no_bold = false,
    styles = {
      comments = {},
      conditionals = {},
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
    },
    color_overrides = {
      mocha = {
        base = "#000000",
        mantle = "#000000",
        crust = "#000000",
      },
    },
    highlight_overrides = {
      mocha = function(C)
        return {
          TabLineSel = { bg = C.pink },
          CmpBorder = { fg = C.surface2 },
          Pmenu = { bg = C.none },
          TelescopeBorder = { link = "FloatBorder" },
        }
      end,
    },
  })

  vim.cmd([[colorscheme catppuccin]])
end

function UseAstroDarkColors()
  local astro = require("astrotheme")

  if not astro then
    return
  end

  astro.setup({
    palette = "astrodark",
    background = {
      dark = "astrodark",
    },
  })

  vim.cmd([[colorscheme astrodark]])
end

function UseZenburnColors()
  local zenburn = require("zenburn")

  if not zenburn then
    return
  end

  zenburn.setup()

  vim.cmd([[colorscheme zenburn]])
end

-- UseCatppuccinColors()
-- UseAstroDarkColors()
UseZenburnColors()
