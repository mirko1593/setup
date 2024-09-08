return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<C-p>",
			function()
				require("telescope.builtin").find_files()
			end,
		},
		{
			"<C-e>",
			function()
				require("telescope.builtin").buffers()
			end,
		},
		-- { '<C-h>', function() require('telescope.builtin').oldfiles() end },
		-- { '<leader>F', function() require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' }) end },
		-- { '<leader>g', function() require('telescope').extensions.live_grep_args.live_grep_args() end },
		-- { '<leader>h', function() require('telescope.builtin').help_tags() end },
		{
			"<C-f>",
			function()
				require("telescope.builtin").lsp_document_symbols()
			end,
		},
	},
	config = function()
		local actions = require("telescope.actions")

		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<esc>"] = actions.close,
					},
				},
				file_ignore_patterns = { ".git/", "/tmp/cache" },
				preview = {
					timeout = 200,
				},
			},
			extensions = {},
			pickers = {
				find_files = {
					previewer = false,
				},
			},
		})
	end,
}
