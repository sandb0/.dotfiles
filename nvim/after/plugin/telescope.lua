local builtin = require('telescope.builtin')

vim.keymap.set('n', ';f', function()
  builtin.find_files({
    no_ignore = false,
    hidden    = true,
  })
end)

vim.keymap.set('n', ';s', function()
  builtin.live_grep()
end)

vim.keymap.set('n', ';;', builtin.resume, {})

vim.keymap.set('n', ';e', builtin.diagnostics, {})

vim.keymap.set('n', ';g', function()
  builtin.git_files({
    hidden = true
  })
end, {})
