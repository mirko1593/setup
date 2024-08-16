-- mouse move laziness
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 0
vim.opt.scrolloff = 8
vim.opt.history = 50
vim.opt.showmode = false

vim.opt.cmdheight = 1
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.spell = false
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.splitbelow = true
vim.opt.splitright = true
-- complete the longest common match, and allow tabbing the results to fully complete.
vim.opt.wildmode = "longest:full,full"
vim.opt.completeopt = "menuone,longest,preview"
vim.opt.termguicolors = true
--
-- remove the ~ from end of buffer
vim.opt.fillchars:append({ eob = " " })
vim.opt.confirm = true
vim.opt.signcolumn = "yes:1"
