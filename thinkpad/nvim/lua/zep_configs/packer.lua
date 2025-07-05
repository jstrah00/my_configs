vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'folke/tokyonight.nvim'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'
  -- use 'tpope/vim-fugitive'
  use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
  }
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
  use 'nvim-tree/nvim-web-devicons'
  use 'airblade/vim-gitgutter'
  -- use 'github/copilot.vim'
  use 'tpope/vim-fugitive'

  use 'github/copilot.vim'

  use  'ThePrimeagen/vim-be-good'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'simrat39/rust-tools.nvim'

  -- Completion framework:
  use 'hrsh7th/nvim-cmp'

  -- LSP completion source:
  use 'hrsh7th/cmp-nvim-lsp'

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'                             
  use 'hrsh7th/cmp-path'                              
  use 'hrsh7th/cmp-buffer'                           
  use 'hrsh7th/vim-vsnip' 

  -- debugger
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-dap-python'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

  -- html and jsx tags auto close
  use 'windwp/nvim-ts-autotag'
end)

