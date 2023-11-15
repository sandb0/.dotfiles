--
-- More keymaps on files:
-- after/plugin/lsp.lua
-- after/plugin/telescope.lua
-- after/plugin/gitsigns.lua
--

local keymap = vim.keymap

vim.g.mapleader = " "

-- Git fugitive
keymap.set("n", "<leader>gs", vim.cmd.Git);
keymap.set("n", "g2", "<cmd>diffget //2<CR>");
keymap.set("n", "g3", "<cmd>diffget //3<CR>");

-- Undotree
keymap.set("n", "<leader>u", "<Cmd>UndotreeToggle<CR><C-w>w")

-- UFO fold
keymap.set('n', 'zR', require('ufo').openAllFolds)
keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- Tree files view
keymap.set("n", "<leader><Tab>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>")
keymap.set("n", "<leader>tc", ":NvimTreeCollapse<CR>")

-- Tabs: Open current buffer in another tab.
keymap.set("n", "te", ":tabedit %<CR>")
-- Tabs: Close current tab.
keymap.set("n", "tq", ":tabclose<CR>")
-- Tabs: Open a empty tab.
-- keymap.set('n', 'te', ':tabedit<CR>')

-- Tabs move
keymap.set('n', ']]', '<Cmd>BufferLineCycleNext<CR>')
keymap.set('n', '[[', '<Cmd>BufferLineCyclePrev<CR>')

-- Buffer move
keymap.set('n', '{{', '<Cmd>bprev<CR>')
keymap.set('n', '}}', '<Cmd>bnext<CR>')

-- Move line limits
-- @TODO - For while don't working on Multi-cursor Normal Mode
keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')
keymap.set('v', 'H', '^')
keymap.set('v', 'L', '$')
-- Select and move
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')
-- Join at same line
keymap.set("n", "J", "mzJ`z")
-- File smart move
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Match move
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- Smart paste
keymap.set("x", "<leader>p", [["_dP]])

-- Format (lint)
keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Split window
keymap.set('n', '<leader>s', ':split<Return><C-w>w')
keymap.set('n', '<leader>v', ':vsplit<Return><C-w>w')
-- Move between windows
--keymap.set('n', 'f', '<C-w>w')
--keymap.set('', 'th', '<C-w>h')
--keymap.set('', 'tk', '<C-w>k')
--keymap.set('', 'tj', '<C-w>j')
--keymap.set('', 'tl', '<C-w>l')
-- Resize window
keymap.set('n', '<C-w><', '20<C-w><')
keymap.set('n', '<C-w>>', '20<C-w>>')
-- keymap.set('n', '<C-w><up>', '20<C-w>+')
-- keymap.set('n', '<C-w><down>', '20<C-w>-')
