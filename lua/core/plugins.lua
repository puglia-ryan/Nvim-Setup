local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  --insert custom plugins here
  --Catppuccin theme
  use { "catppuccin/nvim", as = "catppuccin" }
  --Packer
  use 'wbthomason/packer.nvim'
  --Nvim Tree
  use 'nvim-tree/nvim-tree.lua'
  --Nvim Tree Devicons
  use 'nvim-tree/nvim-web-devicons'
  --Lualine
  use 'nvim-lualine/lualine.nvim'
  --Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  --Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  --GitSigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }
  --Fugitive
  use 'tpope/vim-fugitive'
  --Autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use({
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
	  run = "make install_jsregexp"
  })

  --Mason and lsp configs
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

  --Nvim-lint
  use 'mfussenegger/nvim-lint'
  --Autoclose brackets when created
  use 'm4xshen/autoclose.nvim'
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
