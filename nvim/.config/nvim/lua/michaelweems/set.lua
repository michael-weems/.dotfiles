--. Fat cursor in insert mode
-- vim.opt.guicursor = ""

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- no line wrap
vim.opt.wrap = false

-- don't backup in vim, backup undo's to a long lived folder
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- allow incremental searches
-- ex. /vim --> /vim.* --> /vim.* =
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- better colors
vim.opt.termguicolors = true

-- make sure the cursor isn't at the very top or very bottom while scrolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- speed up terminal
vim.opt.updatetime = 50

-- text column 80 indicator
vim.opt.colorcolumn = "80"

