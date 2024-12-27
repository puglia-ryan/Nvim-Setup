require("core.tabs_and_spacing")
require("core.keymaps.language_keymaps")
require("core.keymaps.keymaps")
require("core.plugins")
--All the files from plugin_config
require("core.plugin_config.mason")
require("core.plugin_config.autoclose")
require("core.plugin_config.catppuccin")
require("core.plugin_config.completions")
require("core.plugin_config.gitsigns")
require("core.plugin_config.lsp_config")
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.treesitter")
require("core.plugin_config.nvim-lint")
require("core.plugin_config.conform")
require("core.plugin_config.toggleterm")
--Allow line numbering 
vim.o.number = true
vim.opt.clipboard = 'unnamedplus'


--Fix Errors and Suggestions trailing off of window
vim.diagnostic.config({
  virtual_text = true,
  float = false,
  signs = true,
  underline = true,
})

