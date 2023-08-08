require("obsidian").setup({
	-- Required, the path to your vault directory.
	dir = "~/Documenti/Obsidian Vault/",
	completion = {
		nvim_cmp = false,
		min_chars = 2,
		new_notes_location = "current_dir",
		prepend_note_id = true
	},
	mappings = {},
	follow_url_func = function(url)
		vim.fn.jobstart({"xdg-open", url})  -- linux
	end,
	finder = "telescope.nvim",
	open_notes_in = "vsplit"
})
