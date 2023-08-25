local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  -- 'sumneko_lua',
  'tsserver',
  'eslint',
  'jsonls',
  'graphql',
  'rust_analyzer',
  'taplo',
  'gopls',
  'hls',
  'elixirls'
})

-- Disable deprecated 'sumneko_lua'. Use `lua_ls` instead.
lsp.skip_server_setup({ 'sumneko_lua' })

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, noremap = true, silent = true }

  vim.keymap.set("n", "<leader>gd", "<Cmd>Telescope lsp_definitions<CR>", opts)
  vim.keymap.set("n", "<leader>gr", "<Cmd>Telescope lsp_references<CR>", opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<C-j>", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>h", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>l", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- lsp.configure('hls', {
--   settings = {
--     haskell = {
--       formattingProvider = 'stylish-haskell',
--     },
--   },
-- })

lsp.configure('lua_ls', {
  capabilities = {
    textDocument = {
      completion = {
        completionItem = {
          snippetSupport = false
        }
      }
    }
  },
  settings = {
    Lua = {
      completion = { callSnippet = "Replace" },
      diagnostics = {
        globals = { 'vim' }
      }
    }
  },
})

lsp.configure('yamlls', {
  settings = {
    yaml = { keyOrdering = false }
  },
})

lsp.configure('tsserver', {
  settings = {
    typescript = {
      snippetSupport = false
    }
  }
})

lsp.configure('jsonls', {
  settings = {
    json = {
      snippetSupport = false
    }
  }
})

lsp.configure('clangd', {
  capabilities = {
    offsetEncoding = { 'utf-16' }
  },
})

-- Still do not disable the snippets in Rust. :(
lsp.configure('rust_analyzer', {
  capabilities = {
    textDocument = {
      completion = {
        snippetSupport = false,
        completionItem = {
          snippetSupport = false
        }
      }
    }
  },
})

lsp.setup()

-- Display diagnostic on editor.
vim.diagnostic.config({
  virtual_text = true,
})
