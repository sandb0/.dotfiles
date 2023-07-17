local opt = vim.opt

vim.g.mapleader = " "

vim.scriptencoding = 'utf-8'

vim.bo.autoread = true

-- Theme color variant: light, dark.
opt.background = 'dark'

vim.opt.guicursor = "a:blinkon1"

-- Spell check.
opt.spell = true
opt.spelllang = "en_us,pt_br"

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
vim.o.foldcolumn = '0'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
opt.title = true
opt.autoindent = true
opt.ai = true
opt.smartindent = true
opt.si = true
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.shell = 'zsh'
opt.inccommand = 'split'
opt.breakindent = true
opt.backspace = { 'start', 'eol', 'indent' }
opt.path:append { '**' }
opt.wildignore:append { '*/node_modules/*' }
opt.nu = true
opt.relativenumber = true
opt.clipboard:append { 'unnamedplus' }
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.autoread = true
opt.termguicolors = true
opt.scrolloff = 10
opt.signcolumn = "yes"
opt.isfname:append("@-@")
opt.updatetime = 50
-- opt.colorcolumn = "80"
opt.colorcolumn = ""
opt.cursorline = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5

vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({ higroup = "Visual", timeout = 200 })
  augroup END
]]
