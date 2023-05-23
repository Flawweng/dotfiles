local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  --use {
    --'svrana/neosolarized.nvim',
    --requires = { 'tjdevries/colorbuddy.nvim' }
  --}
  use 'nvim-lualine/lualine.nvim' -- Statusline
  -- use 'onsails/lspkind-nvim' -- vscode-like pictograms
  -- use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  -- use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  -- use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim' -- File explorer
  use 'nvim-telescope/telescope-file-browser.nvim' -- File explorer
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'windwp/nvim-autopairs'
  -- use 'windwp/nvim-ts-autotag'
  -- use 'akinsho/nvim-bufferline.lua'    
  -- use 'williamboman/mason.nvim' -- Package manager
  -- use 'williamboman/mason-lspconfig.nvim'-- Package manager for LSP
end)
