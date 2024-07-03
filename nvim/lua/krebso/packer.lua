-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }

  }

  use({
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          --- Uncomment these if you want to manage LSP servers from neovim
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  })

  use({
      'rmagatti/goto-preview',
      config = function()
          require('goto-preview').setup {}
      end
  })

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use({
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
  })
  use( 'mbbill/undotree' )
  use( 'tpope/vim-fugitive' )
  use( 'folke/zen-mode.nvim' )
  use( 'f-person/git-blame.nvim' )
  use( 'github/copilot.vim' )
  use( 'shaunsingh/nord.nvim' )
  use( 'aktersnurra/no-clown-fiesta.nvim' )

end)
