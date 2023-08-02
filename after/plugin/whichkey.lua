
local wk = require('which-key')
wk.register({
	['<leader>'] = {
		f = {
			name = '+file',
			f = { '<cmd>Telescope find_files<cr>', 'Find File' },
			r = { '<cmd>Telescope oldfiles<cr>', 'Open Recent File' },
			b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
			g = { '<cmd>Telescope live_grep<cr>', 'Telescope Grep' },
			d = { '<cmd>Telescope git_files<cr>', 'Telescope Git Folder' },
			n = { '<cmd>enew<cr>', 'New File' },
			m = { '<cmd>Ex<cr>', 'Project Modify' },
		},
                n = {
			name = '+tree',
			s = { '<cmd>NERDTreeFind<cr>', 'NERDTree Find' },
			f = { '<cmd>NERDTreeFocus<cr>', 'NERDTree Focus' },
			u = { '<cmd>UndotreeToggle<cr>', 'Undo History Tree' },
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
			name = '+tab',
			l = { '<cmd>tabnext<cr>', 'Next Tab' },
			h = { '<cmd>tabprevious<cr>', 'Previous Tab' },
			q = { '<cmd>tabclose<cr>', 'Close Current Tab' },
			n = { '<cmd>tabnew<cr>', 'New Tab' },
		},
	},
})


