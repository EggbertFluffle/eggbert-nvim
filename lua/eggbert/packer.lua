-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	use { "ellisonleao/gruvbox.nvim" }

	use("theprimeagen/harpoon")

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use {
    	'numToStr/Comment.nvim',
   		config = function()
   	    	require('Comment').setup()
  		end
	}

	use {
		"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} end
	}
	
	use {
  		'nvim-lualine/lualine.nvim',
 	 	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
    	'tamton-aquib/duck.nvim',
    	config = function()
        	vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, {})
        	vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
    	end
	}

	use {'mbbill/undotree'}

	use {'tpope/vim-fugitive'}
end)
