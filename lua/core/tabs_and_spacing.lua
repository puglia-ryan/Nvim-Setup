vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = {'indent', 'eol', 'start'}
vim.opt.showcmd = true
vim.opt.laststatus = 3
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.autoread = true
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { silent = true })

--use spaces for tabs and extra
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
