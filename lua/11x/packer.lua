vim.cmd.packadd('packer.nvim')
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require "telescope".setup {
        pickers = {
          colorscheme = {
            enable_preview = true
          }
        }
      }
    end
  }

  -- select boxes open in telescope - meh
  use { 
    'nvim-telescope/telescope-ui-select.nvim',
    config = function() require("telescope").load_extension('ui-select') end
  }

  -- themes
  use { "ellisonleao/gruvbox.nvim",
         as = 'gruvbox',
         config = function() 
            vim.cmd('colorscheme gruvbox')
            vim.o.background = "dark"
         end
  }
  use { "catppuccin/nvim", as = "catppuccin" }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use {'NLKNguyen/papercolor-theme'}
  -- themes end
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'simrat39/symbols-outline.nvim'
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  use("mbbill/undotree")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      {'hrsh7th/cmp-buffer'},       -- Optional
      {'hrsh7th/cmp-path'},         -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},     -- Optional

      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    }
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use { 'mhartington/formatter.nvim' }

  use {
    "folke/todo-comments.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("todo-comments").setup {}
    end
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Debugging
  use 'mfussenegger/nvim-dap'
  use { 
    "rcarriga/nvim-dap-ui", 
    requires = {"mfussenegger/nvim-dap"},
    config = function() require("dapui").setup {} end
  }
  use 'ldelossa/nvim-dap-projects'
  use {
    'theHamsta/nvim-dap-virtual-text',
    config = function() require("nvim-dap-virtual-text").setup {} end
  }
  use {
    'nvim-telescope/telescope-dap.nvim',
    config = function() require("telescope").load_extension('dap') end
  }

end)
