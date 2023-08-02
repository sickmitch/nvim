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
	use ('preservim/nerdtree')
	use ('nanozuki/tabby.nvim')
	use { 
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require("indent_blankline").setup {
				-- for example, context is off by default, use this to turn it on
				show_current_context = true,
				show_current_context_start = true,
			}
		end
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({ 
		'catppuccin/nvim',  
		as = 'catppuccin',
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
		'folke/which-key.nvim',
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require('which-key').setup {
				-- local wk = require('which-key')
				-- wk.register({
				-- 	['<leader>'] = {
				-- 		f = {
				-- 			name = '+file',
				-- 			f = { '<cmd>Telescope find_files<cr>', 'Find File' },
				-- 			r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
				-- 			n = { '<cmd>enew<cr>', 'New File' },
				-- 		},
				-- 	},
				-- })

			}
		end
	}
	use {
		'ThePrimeagen/harpoon',
		config = function()
			require("harpoon").setup{
				global_settings = {
					-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
					save_on_toggle = false,

					-- saves the harpoon file upon every change. disabling is unrecommended.
					save_on_change = true,

					-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
					enter_on_sendcmd = false,

					-- closes any tmux windows harpoon that harpoon creates when you close Neovim.
					tmux_autoclose_windows = false,

					-- filetypes that you want to prevent from adding to the harpoon list menu.
					excluded_filetypes = { "harpoon" },

					-- set marks specific to each git branch inside git repository
					mark_branch = false,

					-- enable tabline with harpoon marks
					tabline = true,
					tabline_prefix = "   ",
					tabline_suffix = "   ",
				        }
		        }
		end
	}
end)
