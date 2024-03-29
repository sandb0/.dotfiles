local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

null_ls.setup {
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
      vim.api.nvim_command [[augroup END]]
    end
  end,
  sources = {
    -- Disable LSP "Text" suggestions.
    -- null_ls.builtins.completion.spell,

    null_ls.builtins.diagnostics.zsh,
    -- null_ls.builtins.formatting.prettier,
    -- null_ls.builtins.diagnostics.eslint,
  }
}
