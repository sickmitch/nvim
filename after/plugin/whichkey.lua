
local fb_actions = require "telescope".extensions.file_browser.actions

local wk = require('which-key')
wk.register({
	['<leader>'] = {
		f = {
			name = '+telescope',
			f = { '<cmd>Telescope find_files<cr>', 'Find File' },
			r = { '<cmd>Telescope oldfiles<cr>', 'Recent File' },
			o = { '<cmd>Telescope buffers theme=dropdown<cr>', 'Open Buffers' },
			g = { '<cmd>Telescope live_grep<cr>', 'Grep' },
			d = { '<cmd>Telescope git_files<cr>', 'Git Folder' },
			h = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'Actual file' },
			b = { '<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>', 'Browser' },
			m = { '<cmd>Ex<cr>', 'Project Modify' },
		},
		s = {
			name = '+git',
			s = { '<cmd>Git<cr>', 'Git Status' },
		},
		h = {
			name = '+harpoon',
			a = { '<cmd>lua require("harpoon.mark").add_file()<cr>', 'Harpoon Mark' },
			e = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', 'Harpoon List' },
		},
		t = {
			name = '+tabs',
			l = { '<cmd>+tabmove<cr>', 'Move tab right' },
			h = { '<cmd>-tabmove<cr>', 'Move tab left' },
			k = { '<cmd>0tabmove<cr>', 'Move tab at head' },
			j = { '<cmd>$tabmove<cr>', 'Move tab at tail' },
			q = { '<cmd>tabclose<cr>', 'Close current tab' },
			o = { '<cmd>tabonly<cr>', 'Close all others tabs' },
			n = { '<cmd>tabnew<cr>', 'New tab' },
			f = { '<cmd>tab split<cr>', 'Open current file' },
			t = { '<cmd>tabs<cr>', 'List open tabs' },
		},
		x = {
			name = '+terminal',
			v = { '<cmd>ToggleTerm size=50 direction=vertical <cr>', 'Vertical split' },
			s = { '<cmd>ToggleTerm size=50 direction=horizontal <cr>', 'Horizontal split' },
		},
		o = {
			name = '+obsidian',
			b = { '<cmd>ObsidianQuickSwitch<cr>', 'List all' },
			s = { '<cmd>ObsidianSearch<cr>', 'Grep in all' },
			n = { '<cmd>ObsidianNew<cr>', 'New note' },
			l = { '<cmd>ObsidianLink<cr>', 'Link <Visual Mode>' },
			k = { '<cmd>ObsidianNewLink<cr>', 'New Link <Visual Mode>' },
		}
	},
})
