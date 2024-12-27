--This file contains custom keymappings that are not related to running a programme
--in a specific language

--Keymap to use Ctrl+f in order to use live_grep (search)
vim.api.nvim_set_keymap('n', '<C-f>', ":lua require('telescope.builtin').live_grep()<CR>", { noremap = true, silent = true })

--Shift+Tab to move back one tab length in normal and insert mode
vim.keymap.set('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true }) -- In insert mode
vim.keymap.set('n', '<S-Tab>', '<<', { noremap = true, silent = true })    -- In normal mode

