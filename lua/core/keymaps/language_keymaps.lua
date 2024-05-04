
--The following if else block configures the "ü" to run code in nvim depending on which file type is used
--For Python
if vim.fn.expand("%:e") == "py" then
    vim.keymap.set('n', 'ü', ':!python %<CR>', { noremap = true, silent = true})
--For Haskell
elseif vim.fn.expand("%:e") == "hs" then
  vim.keymap.set('n', 'ü', ':!ghc -o %:r % && ./%:r<CR>', {noremap = true, silent = true})
--For Java 
elseif vim.fn.expand("%:e") == "java" then
  vim.keymap.set('n', 'ü', ':!javac % && java %:r<CR>', {noremap = true, silent = true})
--For C
elseif vim.fn.expand("%:e") == "c" then
  vim.keymap.set('n', 'ü', ':!gcc % -o %:r && ./%:r<CR>', {noremap = true, silent = true})
--For Go
elseif vim.fn.expand("%:e") == "go" then
  vim.keymap.set('n', 'ü', ':!go run %<CR>', {noremap = true, silent = true})
elseif vim.fn.expand("%:e") == "rs" then
  vim.keymap.set('n', 'ü', ':!cargo run<CR>', {noremap = true, silent = true})
end
