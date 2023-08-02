local mark = require ("harpoon.mark")
local ui = require ("harpoon.ui")

vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>h5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>h6", function() ui.nav_file(6) end)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

-- require("harpoon").setup({
-- 	global_settings = {
-- 		-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
-- 		save_on_toggle = false,

-- 		-- saves the harpoon file upon every change. disabling is unrecommended.
-- 		save_on_change = true,

-- 		-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
-- 		enter_on_sendcmd = false,

-- 		-- filetypes that you want to prevent from adding to the harpoon list menu.
-- 		excluded_filetypes = { "harpoon" },

-- 		-- set marks specific to each git branch inside git repository
-- 		mark_branch = false,

-- 		-- enable tabline with harpoon marks
-- 		tabline = true,
-- 		tabline_prefix = "   ",
-- 		tabline_suffix = "   ",
-- 	}
-- })
