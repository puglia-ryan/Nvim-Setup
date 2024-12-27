-- To trigger toggleterm, press control and backslash at the same time
require("toggleterm").setup{
  size = 20,                          -- Default terminal height (horizontal split)
  open_mapping = [[<C-\>]],           -- Default keybinding to toggle the terminal
  hide_numbers = true,                -- Hide line numbers in the terminal
  shade_filetypes = {},
  shade_terminals = true,             -- Dim the background of the terminal
  shading_factor = 2,                 -- Degree of shading
  start_in_insert = true,             -- Start in insert mode
  insert_mappings = true,             -- Enable <C-\> in insert mode
  terminal_mappings = true,           -- Enable <C-\> in terminal mode
  persist_size = true,                -- Remember terminal size
  direction = "horizontal",           -- Other options: "vertical" | "tab" | "float"
  close_on_exit = true,               -- Close terminal when process exits
  shell = vim.o.shell,                -- Shell to use
  float_opts = {                      -- Floating window options (if direction = "float")
    border = "curved",
    winblend = 3,
  },
}


