return {
	"nvim-treesitter/nvim-treesitter",
	event = "VeryLazy",
	build = function()
		require("nvim-treesitter.install").update({ with_sync = true })
	end,
	opts = {
		ensure_installed = {
			"python",
			"lua",
			"go",
			"json",
			"jsonc",
			"yaml",
			"vim",
			"vimdoc",
		},
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
			disable = { "yaml" },
		},
		context_commentstring = {
			enable = true,
		},
	},
}
