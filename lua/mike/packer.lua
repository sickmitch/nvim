-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

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
	-- use({
	-- 	'rebelot/terminal.nvim',
	-- 	config = function()
	-- 		require("terminal").setup()
	-- 	end
	-- })
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end}
	use ('epwalsh/obsidian.nvim')
	use ('BurntSushi/ripgrep')
	use ('neoclide/coc.nvim')
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
	use ('lambdalisue/suda.vim')
	use ('tpope/vim-commentary')
	use ('vim-airline/vim-airline')
	use ('vim-airline/vim-airline-themes')
	use ('tpope/vim-surround')
	use {'akinsho/org-bullets.nvim', config = function()
		require('org-bullets').setup{
			symbols = {
				-- list symbol
				list = "•",
				-- headlines can be a list
				headlines = { "◉", "○", "✸", "✿" },
				checkboxes = {
					half = { "", "OrgTSCheckboxHalfChecked" },
					done = { "✓", "OrgDone" },
					todo = { "˟", "OrgTODO" },
				},
			}
		}
	end}
	use {
		'crispgm/nvim-tabline',
		config = true,
	}
	use {
		'goolord/alpha-nvim',
		requires = { 'nvim-tree/nvim-web-devicons' },
		config = function ()
			require'alpha'.setup(require'alpha.themes.startify'.config)
		end
	}
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
