return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				-- pip3 install isort black
				lua = { "stylua" },

				-- pip3 install ruff
				python = { "ruff_format" },

				-- gem install rubocop
				ruby = { "rubocop" },

				-- gem install erb-formatter
				eruby = { "erb_format" },
			},

			format_on_save = {
				timeout_ms = 2000,
				lsp_format = "fallback",
			},
		})
	end,
}
