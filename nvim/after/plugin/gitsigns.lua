local status, gitsigns = pcall(require, "gitsigns")
if (not status) then return end

gitsigns.setup({
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation: previous hunk.
    map('n', '[c', function()
      if vim.wo.diff then return '[c' end
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, { expr = true })

    -- Navigation: next hunk.
    map('n', ']c', function()
      if vim.wo.diff then return ']c' end
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, { expr = true })

    -- Action: (:Gitsigns preview_hunk) Show changes of current line.
    map('n', '<leader>hp', gs.preview_hunk)
    -- Action: (:Gitsigns blame_line) Show changes and blame.
    map('n', '<leader>gb', function() gs.blame_line { full = true } end)
    -- Action: (:Gitsigns toggle_current_line_blame) Toggle blame by line.
    map('n', '<leader>gt', gs.toggle_current_line_blame)
  end
})
