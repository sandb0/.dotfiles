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

    -- Actions
    -- Show changes of current line.
    map('n', '<leader>hp', gs.preview_hunk)
    -- Show all changes of commit (separated in hunks) when the lines has changed.
    map('n', '<leader>hb', function() gs.blame_line { full = true } end)
    -- Show who changed the current line.
    map('n', '<leader>gt', gs.toggle_current_line_blame)
    -- Show all changes of file before commit.
    -- Very useful before make a commit (self code review).
    map('n', '<leader>hd', gs.diffthis)
    -- Show all changes of file before branch merge.
    -- Very useful before make a push (self code review).
    map('n', '<leader>hD', function() gs.diffthis('~') end)
  end
})
