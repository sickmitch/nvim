
local mark = require ("harpoon.mark")
local ui = require ("harpoon.ui")

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<leader>5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<leader>6", function() ui.nav_file(6) end)

vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

require("harpoon").setup({
	global_settings = {
		-- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
		save_on_toggle = false,

		-- saves the harpoon file upon every change. disabling is unrecommended.
		save_on_change = true,

		-- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
		enter_on_sendcmd = false,

		-- filetypes that you want to prevent from adding to the harpoon list menu.
		excluded_filetypes = { "harpoon" },

		-- set marks specific to each git branch inside git repository
		mark_branch = false,

		-- enable tabline with harpoon marks
		-- tabline = true,
		-- tabline_prefix = "   ",
		-- tabline_suffix = "   ",
	}
})
-- local keymap = vim.keymap.set
-- local opts = { noremap = true, silent = true }
--
-- local mark = require ("harpoon.mark")
-- local ui = require ("harpoon.ui")
--
-- keymap("n", "<C-a>", "<cmd>lua require("harpoon.mark").add_file()<cr>", opts)
-- keymap("n", "<C-e>", "<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>", opts)
--
-- lua require("harpoon.ui").toggle_quick_menu()<cr>
-- keymap("n", "<C-1>", function() ui.nav_file(1) end)
-- keymap("n", "<C-2>", function() ui.nav_file(2) end)
-- keymap("n", "<C-3>", function() ui.nav_file(3) end)
-- keymap("n", "<C-4>", function() ui.nav_file(4) end)
-- keymap("n", "<C-5>", function() ui.nav_file(5) end)
-- keymap("n", "<C-6>", function() ui.nav_file(6) end)
--
-- vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
-- vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
-- vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
-- vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
-- vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')

-- require("harpoon").setup({
--   -- menu = {
--   --   width = vim.api.nvim_win_get_width(0) - 4,
--   -- },
--   global_settings = {
--     -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
--     save_on_toggle = false,
--
--     -- saves the harpoon file upon every change. disabling is unrecommended.
--     save_on_change = true,
--
--     -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
--     enter_on_sendcmd = false,
--
--     -- filetypes that you want to prevent from adding to the harpoon list menu.
--     excluded_filetypes = { "harpoon" },
--
--     -- set marks specific to each git branch inside git repository
--     mark_branch = false,
--
--     --enable tabline with harpoon marks
--     tabline = true,
--     tabline_prefix = "   ",
--     tabline_suffix = "   ",
--   },
-- })
