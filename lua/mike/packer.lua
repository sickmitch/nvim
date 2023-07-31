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
	use ({ 
		"catppuccin/nvim",  
		as = "catppuccin",
		config = function()
			-- vim.cmd('colorscheme catppuccin')
		end
	})
	use {
		'daltonmenezes/aura-theme',
		rtp = 'packages/neovim',
		config = function()
			vim.cmd('colorscheme aura-dark-soft-text')
		end
	}
	use {
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function()
			require('dashboard').setup {
				theme = 'hyper'	
			}
		end,
		requires = {'nvim-tree/nvim-web-devicons'}
	}
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('ThePrimeagen/harpoon')
	use ('neoclide/coc.nvim')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use ('lambdalisue/suda.vim')
	use ('tpope/vim-commentary')
	use ('vim-airline/vim-airline')
	use ('vim-airline/vim-airline-themes')

	
end)
