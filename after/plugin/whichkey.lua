
local fb_actions = require "telescope".extensions.file_browser.actions

local wk = require('which-key')
wk.register({
	['<leader>'] = {
		f = {
			name = '+file',
			f = { '<cmd>Telescope find_files<cr>', 'Find File' },
			r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
			o = { '<cmd>Telescope buffers<cr>', 'Buffers' },
			g = { '<cmd>Telescope live_grep<cr>', 'Telescope Grep' },
			d = { '<cmd>Telescope git_files<cr>', 'Telescope Git Folder' },
			n = { '<cmd>enew<cr>', 'New File' },
			b = { '<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>', 'Browser' },
			m = { '<cmd>Ex<cr>', 'Project Modify' },
		},
		g = {
			name = '+git',
			s = { '<cmd>Git<cr>', 'Git Status' },
		},
		h = {
			name = '+harpoon',
			a = { '<cmd>lua require("harpoon.mark").add_file()<cr>', 'Harpoon Mark' },
			e = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', 'Harpoon List' },
		},
		t = {
			l = { '<cmd>+tabmove<cr>', 'Move tab right' },
			h = { '<cmd>-tabmove<cr>', 'Move tab left' },
			k = { '<cmd>0tabmove<cr>', 'Move tab at head' },
			j = { '<cmd>$tabmove<cr>', 'Move tab at tail' },
			q = { '<cmd>tabclose<cr>', 'Close current tab' },
			o = { '<cmd>tabonly<cr>', 'Close all others tabs' },
			n = { '<cmd>tabnew<cr>', 'New tab' },
			f = { '<cmd>tab split<cr>', 'Open current file' },
			t = { '<cmd>tabs<cr>', 'List open tabs' },
		}
	},
})
