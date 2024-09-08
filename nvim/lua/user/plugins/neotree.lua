-- File tree sidebar
--
return {
	"nvim-neo-tree/neo-tree.nvim",
	cmd = "Neotree",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		-- not strictly required, but recommended
		-- brew install font-hack-nerd-font
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	keys = {
		{ "<C-b>", "<cmd>Neotree reveal toggle<cr>" },
	},
	opts = {
		close_if_last_window = true,
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_by_name = {
					".git",
				},
			},
			-- follow_current_file = {
			--   enabled = true,
			-- },
			group_empty_dirs = false,
		},
	},
}
