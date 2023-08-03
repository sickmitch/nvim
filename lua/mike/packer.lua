-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('neoclide/coc.nvim')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use ('lambdalisue/suda.vim')
	use ('tpope/vim-commentary')
	use ('vim-airline/vim-airline')
	use ('vim-airline/vim-airline-themes')
	use ('tpope/vim-surround')
	use {
		'crispgm/nvim-tabline',
		dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
		config = true,
	}
	-- use {
	-- 	'goolord/alpha-nvim',
	-- 	requires = { 'nvim-tree/nvim-web-devicons' },
	-- 	config = function ()
	-- 		require'alpha'.setup(require'alpha.themes.startify'.config)
	-- 	end
	-- }
	use { 
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require("indent_blankline").setup {
				show_current_context = true,
				show_current_context_start = true,
			}
		end
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	use ({ 
		'catppuccin/nvim',  
		as = 'catppuccin',
		config = function()
			vim.cmd('colorscheme catppuccin')
		end
	})
	use {
		'daltonmenezes/aura-theme',
		rtp = 'packages/neovim',
		config = function()
			-- vim.cmd('colorscheme aura-dark-soft-text')

		end
	}
	use {
		'folke/which-key.nvim',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require('which-key').setup {
			}
		end
	}
	use {
		'ThePrimeagen/harpoon',
		config = function()
			require("harpoon").setup{
				global_settings = {
					save_on_toggle = false,
					save_on_change = true,
					enter_on_sendcmd = false,
					tmux_autoclose_windows = false,
					excluded_filetypes = { "harpoon" },
					mark_branch = false,
					tabline = true,
					tabline_prefix = "   ",
					tabline_suffix = "   ",
				        }
		        }
		end
	}
end)
