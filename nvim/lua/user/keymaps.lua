-- , is my leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Clear search highlighting.
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- When text is wrapped, move by terminal rows, not lines, unless a count is provided.
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect visual selection after indenting.
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Maintain the cursor position when yanking a visual selection.
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
vim.keymap.set("v", "y", "myy`y")
vim.keymap.set("v", "Y", "myY`y")

-- Disable annoying command line thing.
vim.keymap.set("n", "q:", ":q<CR>")

-- Paste replace visual selection without copying it.
vim.keymap.set("v", "p", '"_dP')

-- Map Ctrl-s/S to save file
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { noremap = true, silent = true })

-- Map <leader>e to edit file in current directory
vim.keymap.set("n", "<leader>e", ":e <C-R>=escape(expand(\"%:p:h\"),' ') . '/'<CR>", { noremap = true, silent = false })

-- Move text up and down
-- vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
-- vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
-- vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
-- vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
-- vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
-- vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")

-- Insert <%= %> and position cursor in the middle
-- vim.api.nvim_set_keymap("i", "<C-e>", "<%= %><Esc>hi", { noremap = true })

-- Insert <% %> and position cursor in the middle
-- vim.api.nvim_set_keymap("i", "<C-r>", "<% %><Esc>hi", { noremap = true })
