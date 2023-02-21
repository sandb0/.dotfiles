local builtin = require('telescope.builtin')

require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}

require('telescope').load_extension('fzf')

vim.keymap.set('n', ';f', function()
  builtin.find_files({
      no_ignore = false,
      hidden    = true,
  })
end)

vim.keymap.set('n', ';s', function()
  local input_string = vim.fn.input("Search Term > ")

  if (input_string == '') then
    return
  end

  builtin.grep_string({
      search = input_string,
  })
end)

vim.keymap.set('n', ';;', builtin.resume, {})

vim.keymap.set('n', ';e', builtin.diagnostics, {})

vim.keymap.set('n', ';g', function()
  builtin.git_files({
      hidden = true
  })
end, {})

-- Replaced by `grep_string`.
-- vim.keymap.set('n', ';s', function()
--   builtin.live_grep()
-- end)
