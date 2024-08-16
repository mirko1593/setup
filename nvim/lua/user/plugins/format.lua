return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- pip3 install isort black
				python = { "ruff_format" },
				-- python = function(bufnr)
				-- 	if require("conform").get_formatter_info("ruff_format", bufnr).available then
				-- 		return { "black" }
				-- 	else
				-- 		return { "ruff_format" }
				-- 	end
				-- end,
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		})
	end,
}
